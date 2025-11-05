//
//  CharacterModel.swift
//  C10-Estudos
//
//  Created by Rodrigo Barbosa Pereira on 04/11/25.
//

import Foundation

protocol Personagem {
    var nome: String { get }
    var classe: String { get }
    var pontosDeVida: Int { get }
    
    func habilidade() -> String
}

class Mago: Personagem {
    var nome: String = "Gandolf"
    var classe: String = "Mago"
    var pontosDeVida: Int = 80
    
    func habilidade() -> String {
        return "Soltar magias"
    }
}

class Guerreiro: Personagem {
    var nome: String = "Gutts"
    var classe: String = "Guerreiro"
    var pontosDeVida: Int = 150
    
    func habilidade() -> String {
        return "Pirueta com espada"
    }
}

class Arqueiro: Personagem {
    var nome: String = "Archer"
    var classe: String = "Arqueiro"
    var pontosDeVida: Int = 120
    
    func habilidade() -> String {
        return "Chuva de flechas"
    }
}
