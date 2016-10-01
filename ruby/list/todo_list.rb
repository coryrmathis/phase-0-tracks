class TodoList
    
    def initialize(list)
        @chores = list
    end

    def get_items
        @chores
    end

    def add_item(chore_item)
        @chores << chore_item
    end

    def delete_item(chore_item)
        @chores.delete(chore_item)
    end

    def get_item(index)
        @chores[index]
    end

end

    # def get_items
    #     @chores
    # end
    # def add_items(string)
    #     @chores << string
    # end
    # def delete_item(string)
    #     @chores.delete(string)
    # end
    # def get_item(index)
    #     p @chores[index]
    #end


    


test_list = TodoList.new(["do the dishes", "mow the lawn"])
test_list.get_items
