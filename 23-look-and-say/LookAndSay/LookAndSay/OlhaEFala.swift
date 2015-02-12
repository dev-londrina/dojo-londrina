//
//  OlhaEFala.swift
//  LookAndSay
//
//  Created by Flavio Granero on 12/02/15.
//  Copyright (c) 2015 Flavio Granero. All rights reserved.
//

import Foundation

public class OlhaEFala {

    func proximo(entrada:String) -> String {
        var resposta = ""
        var cAnt = Character(" ")
        var contagem = 1
        
        for c in entrada {
            if c != cAnt {
                if cAnt != Character(" ") {
                    resposta += "\(contagem)\(cAnt)"
                }
                cAnt = c
                contagem = 0
            }
            contagem++
        }
        resposta += "\(contagem)\(cAnt)"
        
        return resposta
    }
    
    func meFala(entrada: String, posicao: Int) -> String {
        
        if posicao == 0 {
            return entrada
        }
        return meFala(self.proximo(entrada), posicao:posicao-1)
    }
    
    func meSoma(entrada: String) -> Int{
        var contagem:Int = 0
        for c in entrada {
            contagem += String(c).toInt()!
        }
        return contagem
    }
    
    func meConta(entrada: String, posicao: Int) -> Int {
        return self.meSoma(self.meFala(entrada, posicao: posicao))
    }
    
}