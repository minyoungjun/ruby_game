people = Array.new

loop do
    name = gets.chomp
    if name == "자리배치" || name == "end" || name == "exit"
        break
    end
    people << name
end

puts "=====자리배치의 결과====="

index_number = 1
people.shuffle.each do |person|
    if index_number.odd?
        print "(#{person},"
    else
        puts " #{person})"
    end
    index_number = index_number + 1
end

if people.count.odd?
    puts " None)"
end

puts "========끝========"