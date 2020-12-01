#test
class Menu
    def self.print_all(list)
        list.each_with_index |item, index|
        puts "#{index + 1}. #{item.name}"
    end
end

def self.display(catagory, list)
    self.print_all(list)
    input_menu = "Enter the #{catagory} number, type 'list' to show the #{catagory} list, or type 'exit' :"
puts input_menu
input = 0
while input != "exit"
    input = gets.chomp.downcase
    if input.to_i > 0 && input.to_i < list.length + 1
        index = input.to_i - 1
        return index
    elsif input.to_i > 0 && input.to_i < list.length +1
        index = input.to_i -1
        return index
    elsif input == "list"
    self.print_all
    elseif input == "exit"
    puts "Done"
    else 
        puts "Not sure what #{input_prompt}"
    end
end
end
end

