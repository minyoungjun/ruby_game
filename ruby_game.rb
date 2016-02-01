phone_book = Array.new
loop do
    
    puts "Please answer your name."
    print "Name:"
    answered_name = gets.chomp
    
    if answered_name == "exit"
        break
    end
    
    puts "Please answer your phone number."
    print "Phone:"
    answered_phone_number = gets.chomp
    
    puts "Please answer your gender (male or female)"
    print "Gender:"
    if gets.chomp == "female"
        answered_gender = "female"
    else
        answered_gender = "male"
    end
    
    profile = Hash.new
    profile["name"] = answered_name
    profile["phone"] = answered_phone_number
    profile["gender"] = answered_gender
    
    phone_book << profile
    puts ""
    puts "======PHONE BOOK======"
    
    phone_book.each do |person|
        puts "Name:#{person["name"]} | Phone: #{person["phone"]} | Gender: #{person["gender"]}"
    end
    
    puts "=========END========="
    puts ""
end
