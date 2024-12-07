//
//  NetworkError.swift
//  LoL Builder
//
//  Created by Coolka on 07/12/2024.
//


import Foundation

enum NetworkError: Error {
    case invalidURL
    case requestFailed
    case decodingError
}

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetch<T: Decodable>(_ url: String, completion: @escaping (Result<T, NetworkError>) -> Void) {
        guard let requestURL = URL(string: url) else {
            completion(.failure(.invalidURL))
            print("error: invalidURL")
            return
        }
        
        var request = URLRequest(url: requestURL)
        request.addValue("Bearer \(APIConfig.apiKey)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let _ = error {
                completion(.failure(.requestFailed))
                print("error: requestFailed")
                return
            }
            
            guard let data = data else {
                completion(.failure(.requestFailed))
                print("error: requestFailed")
                return
            }
            
            do {
                print(data)
                print(T.self)
                let decodedResponse = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedResponse))
            } catch {
                completion(.failure(.decodingError))
                print("error: decodingError")
            }
        }.resume()
    }
}
