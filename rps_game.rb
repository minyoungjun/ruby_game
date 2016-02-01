#rock, paper, scissors game!

wins = 0
loses = 0
score = Array.new
puts "======가위 바위보 게임 설명======"
puts "R ,P, S 중에 선택하세요."
puts "R is Rock, P is Paper, S means Scissors."
puts "================================="
puts ""

loop do

    print "R or P or S: "
    user = gets.chomp.upcase #upcase는 대문자로 변환하는 메소드입니다.
    coms = ["R", "P", "S"].sample #sample은 하나를 뽑는 메소드입니다.
    
    if user == "R"
        if coms == "S"
            result = 0
        elsif coms == "R"
            result = 1
        else
            result = 2
        end
    elsif user == "P"
        if coms == "R"
            result = 0
        elsif coms == "P"
            result = 1
        else
            result = 2
        end
    elsif user == "S"
        if coms == "P"
            result = 0
        elsif coms == "S"
            result = 1
        else
            result = 2
        end
    else
        puts "R, P, S가 아닌 것을 냈군요? 다시 내주세요ㅠㅠ"
        result = 3
    end
    
    if result < 3
        puts "컴퓨터는 #{coms}를 냈습니다."
        if result == 0
            puts "당신이 이겼습니다."
            score << "승"
            wins = wins + 1
        elsif result == 1
            puts "비겼습니다."
            score << "무"
        elsif result == 2
            puts "당신이 졌습니다."
            score << "패"
            loses = loses + 1
        end
        
    end
    
    puts ""
    
    if wins > 2 || loses > 2 #10판은 너무 많아서 3판 기준으로 짰습니다.
        break
    end
        
end

puts score
