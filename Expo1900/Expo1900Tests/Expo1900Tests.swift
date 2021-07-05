//
//  Expo1900Tests.swift
//  Expo1900Tests
//
//  Created by Terry Lee on 2021/07/05.
//

import XCTest

class Expo1900Tests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        guard let itemJsonData = NSDataAsset(name: "items", bundle: Bundle(for: Expo1900Tests.self)) else {
            XCTFail();
            return
        }
        
//        guard let items = try? jsonDecoder.decode([ExhibitedItem].self, from: itemJsonData.data) else { XCTFail(); return }
        
//        XCTAssertEqual(items.count, 13)
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
