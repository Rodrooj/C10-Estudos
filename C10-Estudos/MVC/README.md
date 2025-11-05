# 🏛️ Estudo de Padrão de Arquitetura: MVC (Model-View-Controller)

Este projeto é uma implementação simples do padrão **Model-View-Controller (MVC)** em Swift e SwiftUI. O objetivo é demonstrar a separação básica de responsabilidades e identificar pontos comuns de falha ou "code smells" que ocorrem em implementações MVC.

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
* **Implementação:** Uma `struct` SwiftUI com três botões (`Button`).

### C - Controller (Controlador)

* **Arquivo:** `PersonagemController.swift`
* **Responsabilidade:** O intermediário que reage às ações do usuário (vindas da View) e atualiza o Model.
* **Implementação:** Uma classe `PersonagemController` com um método estático `criarPersonagem()`.

*(Nota: O arquivo `Factory.swift` é um padrão de design auxiliar (Factory Method) usado pelo Controller/View para criar instâncias do Model, mas não é um componente principal do MVC em si.)*

## Fluxo Atual da Aplicação

1.  O usuário interage com a `PersonagemView` (View) e clica em um dos botões, por exemplo, "Criar Mago".
2.  A `PersonagemView` **instancia diretamente** um `MagoCreator()` (do arquivo `Factory.swift`).
3.  A `PersonagemView` chama o `PersonagemController.criarPersonagem()` e passa o `MagoCreator` como parâmetro.
4.  O `PersonagemController` (Controller) executa a lógica do `Creator` e imprime o resultado no console.

## ⚠️ Ponto de Estudo: Comunicação Incorreta (Acoplamento Indevido)

Como observado no título, este projeto contém intencionalmente um erro comum de arquitetura.

**O Problema: A View está "inteligente" demais.**

No padrão MVC puro, a View não deve ter conhecimento sobre a lógica de negócios ou como os objetos são criados.

Neste projeto, a `PersonagemView` (View) está **diretamente acoplada** à lógica de criação do Model. Ela sabe que precisa instanciar um `MagoCreator`, `GuerreiroCreator` ou `ArqueiroCreator` para que o Controller funcione.

Isso viola a separação de responsabilidades. Se uma nova classe de personagem (ex: `Ladino`) for criada, o programador precisará modificar:
1.  O `PersonagemModel.swift` (para criar a classe `Ladino`).
2.  O `Factory.swift` (para criar o `LadinoCreator`).
3.  O `PersonagemView.swift` (para adicionar um novo botão *e* saber que deve instanciar `LadinoCreator()`).

A View nunca deveria precisar de modificações apenas porque a lógica de negócios mudou.

### 🎯 Correção Futura (Próximos Passos)

O próximo passo neste estudo será **refatorar** este código para corrigir o acoplamento:

1.  **Mover a lógica de criação:** A instanciação dos `Creators` (ex: `MagoCreator()`) será movida da `PersonagemView` para dentro do `PersonagemController`.
2.  **Simplificar a View:** A `PersonagemView` deixará de conhecer os `Creators`. Ela apenas notificará o `PersonagemController` sobre qual *tipo* de personagem o usuário escolheu (por exemplo, enviando um `enum` simples, como `.mago`).
3.  **Atualizar a View:** O Controller será modificado para, em vez de apenas imprimir no console (`print`), atualizar a View com o resultado da criação (provavelmente introduzindo um `ViewModel` ou `ObservableObject` para facilitar a comunicação View-Controller no SwiftUI).
