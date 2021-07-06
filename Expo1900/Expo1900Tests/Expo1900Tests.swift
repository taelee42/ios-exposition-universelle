//
//  Expo1900Tests.swift
//  Expo1900Tests
//
//  Created by Terry Lee on 2021/07/05.
//

import XCTest
@testable import Expo1900

class Expo1900Tests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_첫페이지_json파일_파싱테스트() throws {
        let result = JSONParser.parse(from: "exposition_universelle_1900", to: Exposition.self)
        switch result {
        case .success(let data):
            print(data)
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
    
    func testItems_json파일_파싱테스트() throws {
        let result = JSONParser.parse(from: "items", to: [Item].self)
        switch result {
        case .success(let data):
            print(data)
        case .failure(let error):
            print(error.localizedDescription)
        }
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
