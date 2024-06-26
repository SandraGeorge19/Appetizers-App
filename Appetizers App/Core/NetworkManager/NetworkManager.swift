//
//  NetworkManager.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation
import Combine

final class NetworkManager {
    static let shared = NetworkManager()
//    private let cache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    
    
    // MARK: - The Basic URLSession Network Call
    func getResponse<T: Codable>(url: String, responseClass: T.Type) -> AnyPublisher<T, AppetizerError> {
        guard let url = URL(string: url) else {
            return Fail(error: AppetizerError.invalidURL).eraseToAnyPublisher()
        }

        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { data, response -> Data in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    throw AppetizerError.invalidResponse
                }
                return data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError { error -> AppetizerError in
                switch error {
                case is URLError:
                    return .unableToComplete
                case is DecodingError:
                    return .invalidData
                default:
                    return .invalidResponse
                }
            }
            .eraseToAnyPublisher()
    }
    
    // MARK: - Network Call using async, await
    func getResponse<T: Codable>(url: String, responseClass: T.Type) async throws -> T {
        guard let url = URL(string: url) else {
            print("invalidURL")
            throw AppetizerError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
            let responseObject = try JSONDecoder().decode(T.self, from: data)
            print("scusses")
            return responseObject
        } catch {
            print("invalidData")
            throw AppetizerError.invalidData
        }
    }
    
//    func downloadImage(fromURLString urlString: String, completion: @escaping (UIImage?) -> Void) {
//        let cacheKey = NSString(string: urlString)
//        
//        if let image = cache.object(forKey: cacheKey) {
//            completion(image)
//            return
//        }
//        
//        guard let url = URL(string: urlString) else {
//            completion(nil)
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {[weak self] data, response, error in
//            guard let self else { return }
//            
//            guard let data, let image = UIImage(data: data) else {
//                completion(nil)
//                return
//            }
//            
//            self.cache.setObject(image, forKey: cacheKey)
//            completion(image)
//        }
//        task.resume()
//    }
}
