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

    def announce_closing_time(time)
        opening_time_integer = @opening_time.to_i
        opening_time_24_hour = opening_time_integer + time
        if opening_time_24_hour > 12
            new_time = opening_time_24_hour - 12
            writable_time = new_time.to_s + ":00PM"
        else
            writable_time = opening_time_24_hour.to_s + ":00AM"
        end
        return "#{@name} will be closing at #{writable_time}"   
    end
end