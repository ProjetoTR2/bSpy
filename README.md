# bSpy
Projeto de teleinformática e redes 2

Este é o projeto desenvolvido pelos alunos da Universidade de Brasília para a discplina do professor Jacir Luiz Bordim de teleinformática e redes 2.
Consiste em um sistema de monitoramento, onde uma camera captura imagens na presença de movimento e envia para uma api que persiste a imagem em um banco de dados.

Ele é baseado no Rails 4.2.6

## Gems de Aplicação

* [SASS](https://github.com/rails/sass-rails) para estilos SCSS
* [Materialize](https://github.com/Dogfalo/materialize) como framework CSS
* [Devise](http://github.com/plataformatec/devise) para autenticação básica de usuário
* [Cancancan](https://github.com/CanCanCommunity/cancancan) para autorização/permissões de perfis/usuários

## Gems de Testes

* [RSpec](https://github.com/rspec/rspec) para testes de unidade
* [Capybara](https://github.com/jnicklas/capybara) para testes de integração
* [Factory Girl](https://github.com/thoughtbot/factory_girl) para dados de teste
* [Faker](https://github.com/stympy/faker) para geração de dados aleatórios de teste

## Implantação

#### Heroku

O sistema em Rails tem que ser hospedado no [Heroku](http://www.heroku.com) durante sua fase de desenvolvimento.

Update do readme para testar a integração com o Slack.
