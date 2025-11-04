# 📚 Repositório de Estudos: Design Patterns & Padrões de Arquitetura

![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)

Este repositório é dedicado ao estudo prático e documentação dos principais Padrões de Design (Design Patterns) e Padrões de Arquitetura de Software. O objetivo é criar implementações claras e exemplos simples para solidificar o conhecimento teórico.

---

## 🗺️ Mapa do Repositório

* [**Design Patterns**](#-design-patterns)
    * [Criacionais](#-criacionais)
    * [Estruturais](#-estruturais)
    * [Comportamentais](#-comportamentais)
* [**Padrões de Arquitetura**](#-padrões-de-arquitetura)
    * [MVC (Model-View-Controller)](#mvc)
    * [MVVM (Model-View-ViewModel)](#mvvm)
    * [Clean Architecture](#clean-architecture)
    * [VIPER](#viper)
* [**Como Executar os Exemplos**](#-como-executar-os-exemplos)
* [**Tecnologias Utilizadas**](#-tecnologias-utilizadas)
* [**Fontes e Referências**](#-fontes-e-referências)

---

## 🧩 Design Patterns

### 🏗️ Criacionais (Creational)

Padrões que abstraem o processo de instanciação, tornando o sistema independente de como seus objetos são criados, compostos e representados.

* [ ] **Singleton:** Garante que uma classe tenha apenas uma instância e fornece um ponto global de acesso a ela.
* [ ] **Factory Method:** Define uma interface para criar um objeto, mas deixa as subclasses decidirem qual classe instanciar.
* [ ] **Abstract Factory:** Fornece uma interface para criar famílias de objetos relacionados ou dependentes sem especificar suas classes concretas.
* [ ] **Builder:** Separa a construção de um objeto complexo de sua representação, permitindo que o mesmo processo de construção crie diferentes representações.

### 🔩 Estruturais (Structural)

Padrões focados em como classes e objetos podem ser compostos para formar estruturas maiores, mantendo a flexibilidade e eficiência.

* [ ] **Adapter:** Converte a interface de uma classe em outra interface que o cliente espera, permitindo a colaboração entre classes com interfaces incompatíveis.
* [ ] **Decorator:** Adiciona responsabilidades a um objeto dinamicamente, fornecendo uma alternativa flexível à herança.
* [ ] **Facade:** Fornece uma interface unificada para um conjunto de interfaces em um subsistema, simplificando seu uso.
* [ ] **Proxy:** Fornece um substituto ou marcador de local para outro objeto, para controlar o acesso a ele.

### 🏃 Comportamentais (Behavioral)

Padrões que se concentram nos algoritmos e na atribuição de responsabilidades entre os objetos, melhorando a comunicação e a flexibilidade.

* [ ] **Command:** Encapsula uma solicitação como um objeto, permitindo parametrizar clientes com diferentes solicitações, enfileirar ou registrar solicitações e suportar operações que podem ser desfeitas.
* [ ] **Memento:** Captura e externaliza o estado interno de um objeto, para que o objeto possa ser restaurado a este estado mais tarde.
* [ ] **Observer:** Define uma dependência um-para-muitos entre objetos, de modo que quando um objeto muda de estado, todos os seus dependentes são notificados e atualizados automaticamente.

---

## 🏛️ Padrões de Arquitetura

Esta seção explora padrões de alto nível para organizar a estrutura geral de um sistema de software, focando na separação de responsabilidades (Separation of Concerns - SoC) e na testabilidade.

### MVC (Model-View-Controller)
* **Descrição:** O padrão arquitetural mais clássico. Separa a aplicação em três componentes principais:
    * **Model:** Camada de dados e lógica de negócio.
    * **View:** Camada de apresentação (UI).
    * **Controller:** Intermediário que recebe entradas do usuário (da View) e atualiza o Model.
* **Status:** `[ ] Em estudo`
* **Exemplo:** `[Link para a pasta /arquitetura/mvc]`

### MVVM (Model-View-ViewModel)
* **Descrição:** Uma evolução do MVC, popular em frameworks modernos (WPF, Angular, Vue, Swift, Kotlin).
    * **Model:** Camada de dados e lógica de negócio.
    * **View:** Camada de apresentação (UI).
    * **ViewModel:** Abstrai a View, expondo dados e comandos. Facilita o *Data Binding* bidirecional, eliminando a necessidade de o Controller manipular a View diretamente.
* **Status:** `[ ] Em estudo`
* **Exemplo:** `[Link para a pasta /arquitetura/mvvm]`

### Clean Architecture
* **Descrição:** Proposta por Robert C. Martin (Uncle Bob), foca na independência de frameworks, UI e banco de dados. Organiza o software em camadas concêntricas (Entidades, Casos de Uso, Adaptadores de Interface, Frameworks e Drivers) com uma regra de dependência estrita: camadas internas não devem saber sobre camadas externas.
* **Status:** `[ ] Em estudo`
* **Exemplo:** `[Link para a pasta /arquitetura/clean-architecture]`

### VIPER
* **Descrição:** Comum no desenvolvimento iOS, é conhecido por sua separação de responsabilidades granular, visando alta testabilidade.
    * **View:** Camada de apresentação (UI).
    * **Interactor:** Contém a lógica de negócio (Casos de Uso).
    * **Presenter:** Formata os dados do Interactor para a View e reage a inputs do usuário.
    * **Entity:** Objetos de modelo (usados pelo Interactor).
    * **Router:** Gerencia a navegação entre as telas (módulos VIPER).
* **Status:** `[ ] Em estudo`
* **Exemplo:** `[Link para a pasta /arquitetura/viper]`

---

## 🚀 Como Executar os Exemplos

Este projeto é um *monorepo* contendo múltiplos mini-projetos (um para cada padrão).

1.  Clone o repositório:
    ```bash
    git clone [https://github.com/seu-usuario/seu-repositorio.git](https://github.com/seu-usuario/seu-repositorio.git)
    ```
2.  Navegue até a pasta do exemplo desejado:
    ```bash
    cd design-patterns/criacionais/Singleton
    ```
3.  Siga as instruções específicas no `README.md` dentro da pasta de cada exemplo. (Ex: como compilar o código, executar testes, etc.).

## 💻 Tecnologias Utilizadas

Este projeto utiliza [**Swift**] para as implementações.

* **Linguagem Principal:** `[Swift]`
* **Testes:** `[XCTest]`
* **Frameworks (para arquitetura):** `[SwiftUI]`

## 📖 Fontes e Referências

* **Livro:** "Design Patterns: Elements of Reusable Object-Oriented Software"
* **Livro:** "Clean Architecture: A Craftsman's Guide to Software Structure and Design" (Robert C. Martin)
* **Site:** [Refactoring Guru](https://refactoring.guru/pt-br)
