//
//  LookAndSayTests.swift
//  LookAndSayTests
//
//  Created by Flavio Granero on 12/02/15.
//  Copyright (c) 2015 Flavio Granero. All rights reserved.
//

import UIKit
import XCTest

class LookAndSayTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEntradaUm() {
        // This is an example of a functional test case.
        //let lookAndSay = LookAndSay
        XCTAssertEqual(OlhaEFala().proximo("1"), "11")
    }
    
    func testEntradaUmUm() {
        XCTAssertEqual(OlhaEFala().proximo("11"), "21")
    }
    
    func testEntradaDoisUm() {
        XCTAssertEqual(OlhaEFala().proximo("21"), "1211")
    }
    
    func testTerceiraEntrada() {
        XCTAssertEqual(OlhaEFala().meFala("1", posicao: 3), "1211")
    }

    func testQuartaEntrada() {
        XCTAssertEqual(OlhaEFala().meFala("1", posicao: 4), "111221")
    }
    
    func testQuintaEntrada() {
        XCTAssertEqual(OlhaEFala().meFala("1", posicao: 5), "312211")
    }
    
    func testSomaEntrada(){
        XCTAssertEqual(OlhaEFala().meSoma("312211"), 10)
    }
    
    func testSomaSextaEntrada(){
        XCTAssertEqual(OlhaEFala().meSoma("13112221"), 13)
    }

    func testMeContaQuintaPosicao() {
        XCTAssertEqual(OlhaEFala().meConta("1", posicao:5), 10)
    }
    
    func testMeContaSextaPosicao() {
        XCTAssertEqual(OlhaEFala().meConta("1", posicao:6), 13)
    }

    func testMeConta50() {
        XCTAssertEqual(OlhaEFala().meConta("1", posicao:50), 1970964)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
