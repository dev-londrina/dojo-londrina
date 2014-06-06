//
//  jakenpo.swift
//  16-jokenpo
//
//  Created by Dev Londrina on 05/06/14.
//  Copyright (c) 2014 Dojo Londrina. All rights reserved.
//

import XCTest

class JokenpoTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testPedraEmpataPedra() {
        var jokenpo = Jokenpo(jogador1: "pedra", jogador2: "pedra")
        
        XCTAssertEqual(jokenpo.resultado(), "empata")
    }
    
    func testPedraGanhaTesoura() {
        var jokenpo = Jokenpo(jogador1: "pedra", jogador2: "tesoura")
        
        XCTAssertEqual(jokenpo.resultado(), "pedra")
    }
    
    func testTesouraGanhaPapel() {
        var jokenpo = Jokenpo(jogador1: "tesoura", jogador2: "papel")
        
        XCTAssertEqual(jokenpo.resultado(), "tesoura")
    }

    func testPapelGanhaPedra() {
        var jokenpo = Jokenpo(jogador1: "papel", jogador2: "pedra")
        
        XCTAssertEqual(jokenpo.resultado(), "papel")
    }

    func testPedraPerdePapel() {
        var jokenpo = Jokenpo(jogador1: "pedra", jogador2: "papel")
        
        XCTAssertEqual(jokenpo.resultado(), "papel")
    }
    
    func testPapelPerdeTesoura() {
        var jokenpo = Jokenpo(jogador1: "papel", jogador2: "tesoura")
        
        XCTAssertEqual(jokenpo.resultado(), "tesoura")
    }
    
    func testTesouraPerdePedra() {
        var jokenpo = Jokenpo(jogador1: "tesoura", jogador2: "pedra")
        
        XCTAssertEqual(jokenpo.resultado(), "pedra")
    }

}
