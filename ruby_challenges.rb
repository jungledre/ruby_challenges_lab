def temp_calc
    puts "TEMPERATURE CONVERTER"
    puts "Type '1' to convert from Celsius to Fahrenheit"
    puts "Type '2' to convert from Fahrenheit to Celsius"

    choice = gets.chomp

    if choice == '1'
        puts "What # would you like to convert from C to F?"
        input = gets.chomp
        output = (9/5.0)*(input.to_i)+32
        puts output
    elsif choice == '2'
        puts "What # would you like to convert from F to C?"
        input = gets.chomp
        output = (5/9.0)*(input.to_i-32)
        puts output
    else
        puts "That was not a valid choice."
    end
end

def simple_calculator
    puts "CALCULATOR"
    puts "What calculation would you like to do? (add, sub, mult, div)"

    choice = gets.chomp
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i
        if choice == "add"
            output = num1 + num2
            puts output
        elsif choice == "sub"
            output = num1 - num2
            puts output
        elsif choice == "mult"
            output = num1 * num2
            puts output
        elsif choice == "div"
            output = num1 / num2
            puts output
        else
            puts "Please enter a valid number"
        end
end

def reverse_string
    puts "REVERSE A STRING"
    puts "Enter a string:"
    input = gets.chomp.split("")
    puts
    puts "Your string reversed:"
    input.each_with_index do |placeholder, i|
        print input[-i-1]
    end
    puts
end

def bank_transaction
    current_balance = 4000
    puts "WELCOME TO THE BANK"

    choice = "no"

    while choice == "no"
        puts "What would you like to do? (deposit, withdraw, check_balance)"
        option = gets.chomp
            if option == "deposit"
                puts "How much would you like to deposit?"
                deposit_amount = gets.chomp.to_i
                current_balance += deposit_amount
                puts "Your new balance is $#{current_balance}"
                puts "Are you done? (yes/no)"
                choice = gets.chomp
            elsif option == "withdraw"
                puts "How much would you like to withdraw?"
                withdraw_amount = gets.chomp.to_i
                current_balance -= withdraw_amount
                puts "Your new balance is $#{current_balance}"
                puts "Are you done? (yes/no)"
                choice = gets.chomp
            elsif option == "check_balance"
                puts "Your current balance is $#{current_balance}"
                puts "Are you done? (yes/no)"
                choice = gets.chomp
            else
                puts "That was not a valid input"
                puts "Are you done? (yes/no)"
                choice = gets.chomp
            end
        end
    puts "Thank you for banking with Adrienne!"
end

def guessing_game
    puts "GUESSING GAME"
    puts "Guess a number between 1 and 100"
    number = 34
    guess = gets.chomp.to_i
    count = 1
    while guess != number
        if guess > 100 || guess < 0
            puts "guess between 1 and 100"
            count += 1
            guess = gets.chomp.to_i
        elsif guess > number
            puts "guess lower"
            count += 1
            guess = gets.chomp.to_i
        elsif guess < number
            puts "guess higher"
            count += 1
            guess = gets.chomp.to_i
        end
    end
    puts "You win! Took ya #{count} guesses."
end

def class_list
students = ["Anil", "Lenny", "Adrienne"]
choice = "yes"
    while choice == "yes"
        puts "Would you like to add another student? (yes/no)"
        choice = gets.chomp
        if choice == "yes"
            count = 0
            puts "What is the student's name?"
            new_student = gets.chomp
            students.push(new_student)
            students = students.sort
            puts "List of all students:"
            students.each do |x|
                count += 1
                puts "#{count}.) #{x}"
            end
        elsif choice == "no"
            choice = "no"
        end
    end
end

puts "Check out this stuff I built for you!"
puts "------------------------"
puts "(1) Temperature Calculator"
puts "(2) Simple Calculator"
puts "(3) String Reverser"
puts "(4) Fake Bank"
puts "(5) Guessing Game"
puts "(6) Class List"
puts "Enter a number:"

grade = gets.chomp.to_i
case grade
when 1
    temp_calc
when 2
    simple_calculator
when 3
    reverse_string
when 4
    bank_transaction
when 5
    guessing_game
when 6
    class_list
else
    puts "Enter a number 1 - 6"
    puts "Example: ruby ruby_challenges.rb 1"
end
