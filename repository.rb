## Gérer la LISTE de tasks

class Repository
    def initialize
        @tasks = []
    end

    # READ
    def all
        @tasks
    end

    # CREAD
    def add(task)
        @tasks << task
    end

    # UPDATE
    def find(index)
        @tasks[index]
    end

    # DELETE
    def remove(index)
        @tasks.delete_at(index)
    end
end