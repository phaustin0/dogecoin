//
//  DownloadService.swift
//  dogecoin
//
//  Created by Zechariah Singh on 24/9/21.
//

import Foundation
import Combine

class DownloadService<T: Codable> {
    func downloadAndDecode(url: URL, completion: @escaping (_ t: T) -> ()) -> AnyCancellable? {
        return NetworkingManager.download(url: url)
            .decode(type: T.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: completion)
    }
}
