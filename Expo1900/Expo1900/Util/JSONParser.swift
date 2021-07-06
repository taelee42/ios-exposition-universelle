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
    static func parse<T: Decodable>(from name: String, to type: T.Type) -> Result<T, JSONParserError> {
        guard let asset = NSDataAsset(name: name) else {
            return .failure(.invalidName)
        }
        let decoder = JSONDecoder()
        guard let result = try? decoder.decode(type, from: asset.data) else {
            return .failure(.failedToDecode)
        }
        return .success(result)
    }
}
