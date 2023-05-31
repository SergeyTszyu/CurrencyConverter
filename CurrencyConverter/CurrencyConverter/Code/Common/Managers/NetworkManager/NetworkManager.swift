//
//  NetworkManager.swift
//  CurrencyConverter
//
//  Created by Sergey Tszyu on 31.05.2023.
//

import Foundation

struct NetworkManager {
    
    static let shared = NetworkManager()
    
    func fetchApiData<T: Decodable>(urlString: String, completion: @escaping (T?, ErrorModel?) -> ()) {
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Failed:", error)
                return
            }
            if let error = self.checkResponse(response: response, data: data) {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
            }
            if let responseData: T = self.handleSuccess(data: data) {
                DispatchQueue.main.async {
                    completion(responseData, nil)
                }
            }
        }.resume()
    }

    func handleSuccess<T: Decodable>(data: Data?) -> T? {
        guard let data = data else {
            return nil
        }
        do {
            let responseModel = try JSONDecoder().decode(T.self, from: data)
            return responseModel
        } catch let jsonErr {
            print("Failed:", jsonErr)
        }
        return nil
    }
    
    func checkResponse(response: URLResponse?, data: Data?) -> ErrorModel? {
        if let httpResponse = response as? HTTPURLResponse {
            if httpResponse.statusCode != 200 {
                let error = self.errorHandle(httpResponse: httpResponse, data: data)
                return error
            }
        }
        return nil
    }

    func errorHandle(httpResponse: HTTPURLResponse, data: Data?) -> ErrorModel? {
        var error: ErrorModel?
        guard let data = data else {
            return nil
        }
        do {
            error = try JSONDecoder().decode(ErrorModel.self, from: data)
        }
        catch let jsonErr {
            print("Failed:", jsonErr)
        }
        return error
    }

}
