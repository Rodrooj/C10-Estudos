# 🏛️ Estudo de Padrão de Arquitetura: MVC (Model-View-Controller)

Este projeto é uma implementação simples do padrão **Model-View-Controller (MVC)** em Swift e SwiftUI. O objetivo é demonstrar a separação básica de responsabilidades que ocorrem em implementações MVC.

O contexto é uma tela simples onde o usuário pode "criar" diferentes classes de personagens (Mago, Guerreiro, Arqueiro).

## Componentes do MVC

Os arquivos do projeto foram separados da seguinte forma para representar o padrão:

### M - Model (Modelo)

* **Arquivo:** `PersonagemModel.swift`
* **Responsabilidade:** Define as regras de negócio e as estruturas de dados.
* **Implementação:** Contém o protocolo `Personagem` e suas implementações concretas: `Mago`, `Guerreiro` e `Arqueiro`.

### V - View (Visão)

* **Arquivo:** `PersonagemView.swift`
* **Responsabilidade:** A camada de interface com o usuário (UI). Deve ser "burra" e apenas exibir dados e capturar eventos do usuário.
* **Implementação:** Uma `View` SwiftUI com três botões.

### C - Controller (Controlador)

* **Arquivo:** `PersonagemController.swift`
* **Responsabilidade:** O intermediário que reage às ações do usuário (vindas da View) e atualiza o Model.
* **Implementação:** Uma classe `PersonagemController` com um método `criarPersonagem()` e um enum `PersonagemTipo`.

*(Nota: O arquivo `Factory.swift` é um padrão de design auxiliar (Factory Method) usado pelo Controller para criar instâncias do Model, mas não é um componente principal do MVC em si.)*

## Fluxo Atual da Aplicação

1.  O usuário interage com a `PersonagemView` (View) e clica em um dos botões, por exemplo, "Criar Mago".
2.  A `PersonagemView` reporta para o `PersonagemController` (Controller) qual botão foi clicado.
3.  O `PersonagemController` pede a `Factory` para criar o personagem solicitado.
4.  A `Factory` interage com o `PersonagemModel` (Model) para criar o personagem.
5.  O fluxo de dados volta pela `PersonagemController` que mostra os dados para a `PersonagemView`
