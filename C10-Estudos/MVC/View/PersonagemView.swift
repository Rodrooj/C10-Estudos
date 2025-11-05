//
//  CharacterView.swift
//  C10-Estudos
//
//  Created by Rodrigo Barbosa Pereira on 04/11/25.
//

import SwiftUI

struct CharacterView: View {
    var body: some View {
        Text("Escolha seu personagem:")
            .padding()
        
        HStack(spacing: 8) {
            Button("Criar Mago") {
                PersonagemController.criarPersonagem(creator: MagoCreator())                
            }
            Button("Criar Guerreiro") {
                PersonagemController.criarPersonagem(creator: GuerreiroCreator())
            }
            Button("Criar Arqueiro") {
                PersonagemController.criarPersonagem(creator: ArqueiroCreator())
            }
        }
        .padding()
    }
}

#Preview {
    CharacterView()
}
