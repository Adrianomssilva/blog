class HomeController < ApplicationController
   def index

      @devs = [
         {name: 'adriano', dev: 'ruby'},
         {name: 'pato', dev: 'javascript'}
      ]

      # @nome = "Adriano"
   end   
end