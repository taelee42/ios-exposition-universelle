//
//  JSONParser.swift
//  Expo1900
//
//  Created by Terry Lee on 2021/07/05.
//

import UIKit

//enum이 구조체 밖에 있는게 좋은지 아니면 내부에 있는게 좋은지 궁금
enum JSONParserError: Error {
    case invalidName
    case failedToDecode
}

struct JSONParser {
    static func loadAsset(for name: String) -> NSDataAsset? {
        return NSDataAsset(name: name)
    }
    
    static func decodeAsset<T: Decodable>(type: T.Type, from data: Data) -> T? {
        let decoder = JSONDecoder()
        return try? decoder.decode(type, from: data)
    }
    
    static func parse<T: Decodable>(from name: String, to type: T.Type) -> Result<T, JSONParserError> {
        guard let asset = loadAsset(for: name) else {
            return .failure(.invalidName)
        }
        guard let result = decodeAsset(type: type, from: asset.data) else {
            return .failure(.failedToDecode)
        }
        return .success(result)
    }
}
