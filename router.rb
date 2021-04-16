# Aiguiller l'utilisateur vers le bon controller 

class Router
    def initialize(controller)
        @controller = controller
    end 

    def run
        # Boucler
            # Afficher les différentes options :
            # Demander le choix utilisateur
            # et stocker la réponse dans une variable
            # Si la réponse est égale à 1 
                # alors demander au controller de afficher la liste des tasks
            # Si la réponse est égale à 2
                # alors demander au controller d'ajouter une task
            # Si la réponse est égale à 3
                # alors demander au controller de Marquer une task comme faite
            # Si la réponse est égale à 4
                # alors demander au controller de Supprimer
            # Sinon sortir de la boucle

        loop do 
            puts "1 - Afficher la liste des tasks"
            puts "2 - Ajouter une task"
            puts "3 - Marquer une task comme faite"
            puts "4 - Supprimer"

            puts "Your choice?"
            answer = gets.chomp.to_i
            case answer
            when 1 then @controller.list
            when 2 then @controller.create
            when 3 then @controller.mark_as_done
            when 4 then @controller.destroy
            else
                break
            end
        end


    end
end