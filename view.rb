# Communiquer avec le user
# puts/gets.chomp

class View
    def display_all(tasks)
        puts ""
        puts "---------------------------------"
        tasks.each_with_index do |task, index|
            cross = task.done? ? "[X]" : "[ ]"
            puts "#{index + 1} - #{cross} #{task.description}"
        end
        puts "---------------------------------"
    end

    def ask_description
        puts "Description?"
        print "> "
        return gets.chomp
    end

    def ask_index
        puts "Index?"
        print "> "
        return gets.chomp.to_i - 1      
    end
end