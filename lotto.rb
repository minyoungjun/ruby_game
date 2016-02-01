lotto_box = Array.new

1.upto(45) do |ball_number|
    lotto_box << ball_number
end

result = lotto_box.sample(6) #여기서 sample은 배열에서 랜덤으로 몇개를 뽑아내어(샘플링) 새로운 배열을 만드는 메소드입니다.)

print "당첨번호는 "
result.sort.each do |result_ball|  #여기서 sort는 작은 수에서 큰 순서대로 정렬하는 메소드입니다.
    print "("
    print result_ball
    print ") "
end
puts "입니다."
