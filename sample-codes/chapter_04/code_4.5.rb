(1..5).class
(1...5).class

range = 1..5
range.include?(0)
range.include?(1)
range.include?(4.9)
range.include?(5)
range.include?(6)

range = 1...5
range.include?(0)
range.include?(1)
range.include?(4.9)
range.include?(5)
range.include?(6)

(1..5).include?(1)

1..(5.include?(1))

# 4.5.1
a = [1, 2, 3, 4, 5]
a[1..3] #=> [2, 3, 4]

a = 'abcdef'
a[1..3] #=> "bcd"

# 4.5.2
# 不等号を使う場合
def liquid?(temperature)
  0 <= temperature && temperature < 100
end
liquid?(-1) #=> false
liquid?(0) #=> true
liquid?(99) #=> true
liquid?(100) #=> false

# 範囲オブジェクトを使う場合
def liquid?(temperature)
  (0...100).include? (temperature)
end
liquid?(-1) #=> false
liquid?(0) #=> true
liquid?(99) #=> true
liquid?(100) #=> false

# 4.5.3
def chrge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end
charge(3) #=> 0
charge(12) #=> 300
charge(18) #=> 600
charge(25) #=> 1000

# 4.5.4
(1..5).to_a #=> [1, 2, 3, 4, 5]
(1...5).to_a #=> [1, 2, 3, 4]

('a'..'e').to_a #=> ["a", "b", "c", "d", "e"]
('a'...'e').to_a #=> ["a", "b", "c", "d"]

('bad'..'bag').to_a #=> ["bad", "bae", "baf", "bag"]
('bad'...'bag').to_a #=> ["bad", "bae", "baf"]

# 4.5.5
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
sum #=> 10

sum = 0
(1..4).each { |n| sum += n }
sum #=> 10

numbers = []
(1..10).step(2) { |n| numbers << n }
numbers #=> [1, 3, 5 7, 9]
