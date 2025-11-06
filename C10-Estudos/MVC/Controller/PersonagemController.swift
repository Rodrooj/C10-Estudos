//
//  CharacterController.swift
//  C10-Estudos
//
//  Created by Rodrigo Barbosa Pereira on 04/11/25.
//

import Foundation
import Combine

class PersonagemController: ObservableObject {
    enum PersonagemTipo {
        case mago
        case guerreiro
        case arqueiro
    }
    
    @Published var personagemAtual: Personagem?
    
    func criarPersonagem(tipo: PersonagemTipo) {
        switch tipo {
        case .mago:
            self.personagemAtual = MagoCreator().factory()
        case .guerreiro:
            self.personagemAtual = GuerreiroCreator().factory()
        case .arqueiro:
            self.personagemAtual = ArqueiroCreator().factory()
        }
    }
    
}
