class Restaurant
    attr_reader :dishes, :name, :opening_time
    def initialize(opening_time, name)
        @dishes = []
        @opening_time = opening_time
        @name = name
        
        

    end

    def closing_time(hours)
        initial_time = @opening_time.to_i + hours
        actual_closing_time = initial_time.to_s + ":00"
    end
    
    def add_dish(new_dish)
        @dishes << new_dish
    end

    def open_for_lunch?
        @opening_time.to_i < 12
    end

    def menu_dish_names
        capitalized_dishes = []
        @dishes.each do |dish|
           capitalized_dishes << dish.upcase
        end
        capitalized_dishes
    end
end