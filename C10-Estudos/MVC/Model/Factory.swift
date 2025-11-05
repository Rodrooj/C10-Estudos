//
//  Factory.swift
//  C10-Estudos
//
//  Created by Rodrigo Barbosa Pereira on 05/11/25.
//

import Foundation

protocol PersonagemCreator {
    func factory() -> Personagem
    func criarPersonagem() -> String
}

extension PersonagemCreator {
    func criarPersonagem() -> String {
        let personagem = factory()
        
        return "A lógica do criador funcionou com " + personagem.classe
    }
}

class MagoCreator: PersonagemCreator {
    public func factory() -> Personagem {
        return Mago()
    }
}

class GuerreiroCreator: PersonagemCreator {
    public func factory() -> Personagem {
        return Guerreiro()
    }
}

class ArqueiroCreator: PersonagemCreator {
    public func factory() -> Personagem {
        return Arqueiro()
    }
}
