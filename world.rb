
require_relative "voter"
require_relative "politician"

class World

  def initialize
    @all_people = []
  end

  def put_a_line
    puts "\n"
    puts "/\\" * 40
    puts "\n"
  end

  def main_menu
    put_a_line
    puts "What would you like to do?"
    puts "(C)reate, (L)ist, (U)pdate, or (D)elete"
    put_a_line
    main_menu_selection = gets.chomp.downcase

    case main_menu_selection
      when "c"
        create
      when "l"
        list
      when "u"
        update
      when "d"
        delete
      else
        puts "Invalid entry."
        main_menu
    end
  end

  def create
    put_a_line
    puts "What would you like to create? Choose a letter."
    puts "(P)olitician or (V)oter"
    put_a_line
    create_selection = gets.chomp.downcase

    case create_selection
      when "v"
        puts "Voter name:"
        name = gets.chomp
        puts "Voter politics:"
        politics = gets.chomp
        # type = voter
        new_record = Voter.new(name, politics)
        @all_people << new_record
      when "p"
        create_politican
      else
        puts "Invalid entry."
        create
    end
  end

  def list
    put_a_line
    puts "What would you like to list?"
    puts "(P)olitician, (V)oter or (B)oth"
    put_a_line
    list_selection = gets.chomp.downcase

    case list_selection
      when "v"
        list_voter
      when "p"
        list_politican
      when "b"
        list_both
      else
        puts "Invalid entry."
        list
    end
  end
