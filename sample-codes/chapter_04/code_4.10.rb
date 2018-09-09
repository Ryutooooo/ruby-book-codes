# 4.10.1
numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
  puts n
  berak if n == 5
end
#=> 3
#   1
#   5

numbers = [1, 2, 3, 4, 5].shuffle
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end
#=> 2
#   4
#   5

ret =
  while ture
    break
  end
ret #=> nil

ret =
  while true
    break 123
  end
ret #=> 123

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end
# numbersのループは脱出するが、fruitsのループは継続する

# 4.10.2
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end
#=> melon, 2
#   melon, 1
#   melon, 4
#   melon, 3
#   orange, 3

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :foo
      end
    end
  end
end
#=> orange, 1
#   orange, 3
#   UncaughtThrowError: uncaught throw : foo

ret =
catch :done do
  throw : done
end
ret #=> nil

ret = catch :done do
  throw :done, 123
end
ret #=> 123

# 4.10.3
def greeting(country)
  return 'insert country please' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

def calc_with_break
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    break if n.even?
  end
  target * 10
end
calc_with_break #=> 40

def calc_with_return
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    return if n.even?
  end
  target * 10
end
calc_withreturn #=> nil

[1, 2, 3].each do |n|
  puts n
  return
end
#=> 1
#   Local JumpError: unexpected return

# 4.10.4
numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  next if n.even?
  puts n
end
#=> 1
#   3
#   5

numbers = [1, 2, 3, 4, 5]
i = 0
while i < numbers.size
  n = numbers[i]
  i += 1
  next if n.even?
  puts n
end
#=> 1
#   3
#   5

fruits = ['apple', 'melon', 'orange']
numbers [1, 2, 3, 4]
fruits.each do |fruit|
  numbers.each do |n|
    next if n.even?
    puts "#{fruit}, #{n}"
  end
end
#=> apple, 1
#   apple, 3
#   melon, 1
#   melon, 3
#   orange, 1
#   orange, 3

# 4.10.5
foods = ['ピーマン', 'トマト', 'セロリ']
foods.each fo |food|
  print "#{food}は好きですか？ => "
  answer = ['yes', 'no'].sample
  puts answer
  redo unless answer == 'yes'
end
#yesと答えなければもう一度聞き直す

foods = ['ピーマン', 'トマト', 'セロリ']
foods.each fo |food|
  print "#{food}は好きですか？ => "
  answer = 'no'
  puts answer

  count += 1
  redo if answer != 'yes' && count < 2
  count = 0
end
