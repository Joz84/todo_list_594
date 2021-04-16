### Objectifs de l'app :
# Afficher la liste des tasks
# Ajouter une task
# Marquer une task comme faite
# Supprimer

## Router
    # Afficher les différentes options
        #  1 - Afficher la liste des tasks
        #  2 - Ajouter une task
        #  3 - Marquer une task comme faite
        #  4 - Supprimer

    # Demander le choix utilisateur
    # Stocker la réponse dans une variable
    # Si la réponse est égale à 1 
        # alors demander au controller de afficher la liste des tasks
    # Si la réponse est égale à 2
        # alors demander au controller d'ajouter une task


## Controller 
    ### list
    # Demander la liste au repo et la stocker dans une variable
    # Demander a la vue de l'afficher

    ### create
    # Demander à vue de demander à l'utilisateur la desc de la task
    # et la stocker la stocker dans une variable
    # Demander à Task de créer une task et la stocker dans une variable
    # Demander au repo de l'ajouter à la liste de task  

require_relative "task"
require_relative "repository"
require_relative "router"
require_relative "controller"



# p task1.done?
# task1.done!
# p task1.done?
# p task1

# repository = Repository.new

# p repository.all

repository = Repository.new

# task1 = Task.new("Acheter une carotte")
# task2 = Task.new("Faire les flashcards")
# repository.add(task1)
# repository.add(task2)

controller = Controller.new(repository)
router = Router.new(controller)

router.run
