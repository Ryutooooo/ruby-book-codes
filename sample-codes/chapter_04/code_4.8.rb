# 4.8.1
fruits = w%(apple orange melon)
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
#=> 0: apple
#   1: orange
#   2: melon

# 4.8.2
fruits = ['apple', 'orange', 'melon']
fruites.map.with_index { |fruit, i| "#{i}: #{fruit}" }
#=> ["0: apple", "1: orange", "2: melon"]

fruits = ['apple', 'orange', 'melon']
fruits.map.with_index { |fruit, i| fruit.include?('a') && i.odd? }
#=> ["apple", "melon"]

fruits = ['apple', 'orange', 'melon']
ftuits.each      #=> #<Enumerator: ["apple", "orange", "melon"]:each>
ftuits.map       #=> #<Enumerator: ["apple", "orange", "melon"]:map>
ftuits.delete_if #=> #<Enumerator: ["apple", "orange", "melon"]:delete_if>

# 4.8.3
fruits = ['apple', 'orange', 'melon']
ftuits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
#=> 1: apple
#   2: orange
#   3: melon

fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }
#=> ["10: apple", "11: orange", "12: melon"]

# 4.8.4
dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

areas = []
dimensions.each do |dimension|
  length = dimensions[0]
  width = dimension[1]
  areas << length * width
end
areas #=> [200, 1200, 3000]

dimensions.each do |lengt, width|
  areas << length * width
end
areas #=> [200, 1200, 3000]

dimensions.each do |length, width, foo, bar|
  p [length, width, nil, nil]
end
#=> [10, 20, nil, nil]
#   [30, 40, nil, nil]
#   [50, 60, nil, nil]

dimensions = [
  [10, 20, 100],
  [30, 40, 200],
  [50, 60, 300],
]

dimensions.each do |length, width|
  p [length, width]
end
#=> [10, 20]
#   [30, 40]
#   [50, 60]

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: [10, 20], width: 0, i:
#   length: [30, 40], width: 1, i:
#   length: [50, 60], width: 2, i:

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
dimensions.each_with_index do |dimension, i|
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: 10, width: 20, i: 0
#   length: 30, width: 40, i: 1
#   length: 50, width: 60, i: 2

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: 10, width: 20, i: 0
#   length: 30, width: 40, i: 1
#   length: 50, width: 60, i: 2

# 4.8.5
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n; sum|
  sum = 10
  sum += n
  p sum
end
#=> 11
#   12
#   13
#   14
sum #=> 0

# 4.8.6
File.open("./sample.txt", "w") do |file|
  file.puts("1 row text")
  file.puts("2 row text")
  file.puts("3 row text")
end

# 4.8.7
a = [1, 2, 3]

a.delete(100) #=> nil

a.delete(100) do
  'NG'
end
#=> "NG"

a.delte 100 do
  'NG'
end
#=> "NG"

a.delte 100 { 'NG' }
#=> syntaxerror: syntax error, unexpected '{', expecting end-of-input

a.delte(100) { 'NG' }
#=> "NG"
