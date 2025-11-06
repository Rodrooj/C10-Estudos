//
//  PersonagemView.swift
//  C10-Estudos
//
//  Created by Rodrigo Barbosa Pereira on 04/11/25.
//

import SwiftUI

struct PersonagemView: View {
    @StateObject private var controller = PersonagemController()
    
    var body: some View {
        Text("Escolha seu personagem:")
            .padding()
        
        HStack(spacing: 8) {
            Button("Criar Mago") {
                controller.criarPersonagem(tipo: .mago)
            }
            Button("Criar Guerreiro") {
                controller.criarPersonagem(tipo: .guerreiro)
            }
            Button("Criar Arqueiro") {
                controller.criarPersonagem(tipo: .arqueiro)
            }
        }
        .padding()
        
        if let personagemAtual = controller.personagemAtual {
            Text("Nome: \(personagemAtual.nome)")
            Text("Classe: \(personagemAtual.classe)")
            Text("Pontos de Vida: \(personagemAtual.pontosDeVida)")
            Text("Habilidade: \(personagemAtual.habilidade())")
        }
    }
}

#Preview {
    PersonagemView()
}
