# Demander avec le repo et la vue

require_relative "view.rb"
require_relative "task.rb"

class Controller
    def initialize(repository)
        @repository = repository
        @view = View.new
    end

    def list
        # Demander la liste au repo et la stocker dans une variable
        # Demander a la vue de l'afficher
        tasks = @repository.all
        @view.display_all(tasks)
    end

    def create
        # Demander à vue de demander à l'utilisateur la desc de la task
        # et la stocker la stocker dans une variable
        # Demander à Task de créer une task et la stocker dans une variable
        # Demander au repo de l'ajouter à la liste de task 
        description = @view.ask_description
        task = Task.new(description) 
        @repository.add(task)
    end

    def mark_as_done
        # Demander à view l'index de la task à marquer
        # et la stocker dans une variable
        # Demander à repository de retrouver la task dans la liste
        # Demander à task de la mettre à done!

        index = @view.ask_index
        task = @repository.find(index)
        task.done!
    end

    def destroy
        # Demander à view l'index de la task à supprimer
        # et la stocker dans une variable
        # Demander à repository de effacer la task dans la liste  
        index = @view.ask_index
        @repository.remove(index)             
    end
end