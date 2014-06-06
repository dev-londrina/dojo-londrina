//
//  jakenpo.swift
//  16-jokenpo
//
//  Created by Eduardo Fiorezi on 05/06/14.
//  Copyright (c) 2014 Dojo Londrina. All rights reserved.
//

import Foundation


class Jokenpo {
    
    var jogador1:String
    var jogador2:String
    let ganha = ["papel": "pedra", "tesoura": "papel", "pedra": "tesoura" ]

    init(jogador1:String, jogador2:String) {
        self.jogador1 = jogador1
        self.jogador2 = jogador2
    }

    func resultado() -> String {

        if jogador1 == jogador2 {
            return "empata"
        } else if ganha[jogador1] == jogador2 {
            return jogador1
        }
        return jogador2
    }

}
