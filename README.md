MyRottenPotatoes
Este projeto é uma aplicação web desenvolvida em Ruby on Rails, baseada nos ensinamentos do Capítulo 4 do livro "Engineering Software as a Service: An Agile Approach Using Cloud Computing". A aplicação permite aos utilizadores gerir uma base de dados de filmes, implementando funcionalidades de CRUD (Create, Read, Update, Destroy) e ordenação da lista de filmes.

Visão Geral da Implementação
A aplicação foi construída seguindo as convenções e os padrões de arquitetura do Ruby on Rails:

Arquitetura: Model-View-Controller (MVC).

Modelo (Movie): Utiliza o Active Record para interagir com a base de dados, representando a tabela movies.

Rotas (routes.rb): As rotas são definidas de forma RESTful usando resources :movies, o que gera automaticamente todos os endpoints necessários para a gestão dos filmes.

Controller (MoviesController): Contém a lógica para receber os pedidos HTTP, interagir com o modelo Movie e renderizar as views apropriadas.

Views: Ficheiros ERB (Embedded Ruby) que apresentam os dados ao utilizador de forma dinâmica.

Funcionalidades Implementadas
Listagem de todos os filmes na base de dados.

Visualização dos detalhes de um filme específico.

Criação, edição e eliminação de filmes através de formulários web.

Ordenação da lista de filmes: É possível ordenar a lista de filmes clicando nos cabeçalhos das colunas "Título do Filme" e "Data de Lançamento". A coluna ordenada é destacada visualmente com CSS.

Como Instalar e Executar a Aplicação
Para executar este projeto no seu ambiente local, siga os passos abaixo.

Pré-requisitos
Certifique-se de que tem o seguinte software instalado na sua máquina:

Ruby (a versão está especificada no ficheiro .ruby-version)

Ruby on Rails (gem install rails)

Bundler (gem install bundler)

Git

Passos de Instalação
Clone o repositório para a sua máquina local:

git clone [https://github.com/Marquito2003/Projeto-myrottenpotatoes.git](https://github.com/Marquito2003/Projeto-myrottenpotatoes.git)

Navegue para a pasta do projeto:

cd Projeto-myrottenpotatoes

Instale as dependências (gems) do projeto:

bundle install

Crie e prepare a base de dados: Este comando irá criar a base de dados e executar todas as migrations para criar as tabelas necessárias.

rails db:migrate

(Opcional) Adicione dados iniciais à sua base de dados para poder testar a aplicação. Pode usar a consola Rails:

rails c

E depois criar alguns filmes:

Movie.create(title: 'Star Wars', rating: 'PG', release_date: '1977-05-25')
Movie.create(title: 'The Godfather', rating: 'R', release_date: '1972-03-24')

Executar o Servidor
Inicie o servidor de desenvolvimento do Rails:

rails server

Abra o seu navegador e aceda a:

http://localhost:3000/movies

A aplicação deverá estar a funcionar! Poderá agora adicionar novos filmes e testar a funcionalidade de ordenação.