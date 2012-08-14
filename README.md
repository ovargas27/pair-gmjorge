# Biblioteca

Crear un sistema sencillo para administrar una Biblioteca personal

## Features

  + CRUD de libros con title, ISBN y author
  + Authenticación de usuarios mediante Google y OAuth
    - Se recomienda OmniAuth, pero, se puede usar cualquier gem/lib
    - Si es la primera vez que se accesa, crear un nuevo registro de User, de otra forma, usar el ya existente
  + Mostrar una lista de los usuarios registrados/authentificados.
  + Los usuarios pueden "tomar" libros al hacerlo el estado de los libros cambia a "ocupado"
  + Al "regresar" el libro, su estado cambia a "disponible"
  + Solo el usuario que "tomo" el libro, puede regresarlo
  + Mostrar la lista de libros que un usuario tiene bajo la url `</users/1/books>`
  + La lista de libros debe estar ordenada por "estado" y alfabeticamente
  + Mostrar solo la lista de libros "disponibles" (mediante un boton, link, etc)
  + Mostrar solo la lista de libros "ocupados" (mediante un boton, link, etc)
  + Los usuario pueden calificar un libro
  + Mostrar la lista de libros ordenadas por calificación
  + Los usuarios pueden comentar libros
  + Mostrar un libro con todos sus comentarios
  + Mostrar un libro con todos sus comentarios y sobresaltar los comentarios del usuario
  + Los usuarios pueden agregar tags a los libros
  + Autocompletar los tags
  + Mostrar todas las tags agregadas al libro
  + Filtar la lista de libros por tag

## Requerimientos

  + Debe ser una Rails app
  + DB server de su preferencia (Mysql/Postgres/SQLite)
  + TDD de los Modelos (MiniTest/TestUnit/RSpec)

### Opcionales

  + BDD  (Cucumber/Capybara + RSpec)
  + Ourside-In development
  + Usar Twitter Boostrap
  + Simple Form / Formtastic
  + Deployar a Heroku / EngineYard
  + Utilizar HAML
  + Utilizar UJS
  + Utilizar Backbone.js o Ember.js o cualquier otro client side framework
