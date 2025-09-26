# 🎬 MyRottenPotatoes

Este projeto é uma aplicação web desenvolvida em **Ruby on Rails**, baseada nos ensinamentos do **Capítulo 4** do livro *Engineering Software as a Service: An Agile Approach Using Cloud Computing*.  

A aplicação permite aos utilizadores gerir uma base de dados de filmes, implementando funcionalidades de **CRUD (Create, Read, Update, Destroy)** e **ordenação da lista de filmes**.

---

## 📖 Visão Geral da Implementação

A aplicação foi construída seguindo as convenções e os padrões de arquitetura do **Ruby on Rails**:

- **Arquitetura**: Model-View-Controller (MVC).
- **Modelo (`Movie`)**: Utiliza o Active Record para interagir com a base de dados, representando a tabela `movies`.
- **Rotas (`routes.rb`)**: Definidas de forma RESTful usando `resources :movies`, o que gera automaticamente todos os endpoints necessários.
- **Controller (`MoviesController`)**: Contém a lógica para receber os pedidos HTTP, interagir com o modelo `Movie` e renderizar as views apropriadas.
- **Views**: Ficheiros **ERB (Embedded Ruby)** que apresentam os dados ao utilizador de forma dinâmica.

---

## ✅ Funcionalidades Implementadas

- 📋 Listagem de todos os filmes na base de dados  
- 🔎 Visualização dos detalhes de um filme específico  
- ✍️ Criação, edição e eliminação de filmes através de formulários web  
- 📑 Ordenação da lista de filmes:
  - Ordenar por **"Título do Filme"** e **"Data de Lançamento"** clicando nos cabeçalhos da tabela  
  - Coluna ordenada é destacada visualmente com **CSS**

---

## ⚙️ Como Instalar e Executar a Aplicação

### 🔧 Pré-requisitos

Certifique-se de que tem o seguinte software instalado na sua máquina:

- [Ruby](https://www.ruby-lang.org) (a versão está especificada no ficheiro `.ruby-version`)
- [Ruby on Rails](https://rubyonrails.org/)  
  ```bash
  gem install rails

# Clone o repositório
  ```bash
  git clone https://github.com/Marquito2003/Projeto-myrottenpotatoes.git


# Acesse a pasta do projeto
  ```bash
  cd Projeto-myrottenpotatoes


# Instale as dependências
  ```bash
  bundle install

# Crie e prepare a base de dados
  ```bash
  rails db:migrate

# (Opcional) Abra o console Rails e insira alguns filmes de exemplo
  ```bash
  rails c
  Movie.create(title: 'Star Wars', rating: 'PG', release_date: '1977-05-25')
  Movie.create(title: 'The Godfather', rating: 'R', release_date: '1972-03-24')
  exit


