# 4.7.1
a = [1, 2, 3, 4, 5]
a[1,3] #=> [2, 3, 4]

a = [1, 2, 3, 4, 5]
a.values_at(0, 2, 4) #=> [1 3, 5]

a = [1, 2, 3]
a[a.size -1] #=> 3

a = [1, 2, 3]

a[-1] #=> 3
a[-2] #=> 2
a[-2, 2] #=> [2, 3]

a = [1, 2, 3]
a.last #=> 3
a.last(2) #=> [2, 3]

a = [1, 2, 3]
a.first #=> 1
a.first(2) #=> [1, 2]

# 4.7.2
a = [1, 2, 3]
a[-3] = -10 #=> [-10, 2, 3]

a[-4] = 0 #=> INdexError: index -4 too small for array; minimum: -3

a = [1, 2, 3, 4, 5]
a[1, 3] = 100
a #=> [1, 100, 5]

a = []
a.push(1) #=> [1]
a.push(2, 3) #=>[1, 2, 3]

a = [1, 2, 3, 1, 2, 3]
a.delete(2) #=> 2
            #=> [1, 3, 1, 3]
a.delete(5) #=> nil
            #=> [1, 3, 1, 3]

# 4.7.3
a = [1]
b = [2, 3]
a.concat(b) #=> [1, 2, 3]

a #=> [1, 2, 3]
b #=> [2, 3]

a = [1]
b = [2, 3]
a + b #=> [1, 2, 3]
a #=> [1]
b #=> [2, 3]

# 4.7.4
a = [1, 2, 3]
b = [3, 4, 5]
a | b #=> [1, 2, 3, 4 ,5]

a = [1, 2, 3]
b = [3, 4, 5]
a - b #=> [1, 2]

a = [1, 2, 3]
b = [3, 4, 5]
a & b #=> [3]

a = Set.new([1, 2, 3])
b = set.new([3, 4, 5])
a | b #=> #<Set: {1, 2, 3, 4 ,5}>
a - b #=> #<Set: {1, 2}>
a & b #=> #<Set: {3}>

# 4.7.5
e, f = 100, 200, 300
e #=> 100
f #=> 200

e, *f = 100, 200, 300
e #=> 100
f #=> [200, 300]

# 4.7.6
a = []
a.push(1) #=> [1]
a.push(2, 3) #=> [1, 2, 3]

a = []
b = [2, 3]
a.push(1) #=> [1]
a.push(b) #=> [1, [2, 3]]

a = []
b = [2, 3]
a.push(1) #=> [1]
a.push(*b) #=> [1, 2, 3]

# 4.7.7
def greeting(*name)
  "#{names.join('and')}, Hello!"
end
greeting('john')
greeting('john', 'bob')
greeting('john', 'bob', 'mary')

# 4.7.8
a = [1, 2, 3]
[a] #=> [[1, 2, 3]]
[*a] #=> [1, 2, 3]

a = [1, 2, 3]
[-1, 0, *a, 4, 5] #=> [-1, 0, 1, 2, 3, 4, 5]

a = [1, 2, 3]
[-1, 0] + a + [4, 5] #=> [-1, 0, 1, 2, 3, 4, 5]

# 4.7.9
[1, 2, 3] == [1, 2, 3] #=> true
[1, 2, 3] == [1, 2, 4] #=> false
[1, 2, 3] == [1, 2] #=> false
[1, 2, 3] == [1, 2, 3, 4] #=> false

# 4.7.10
['apple', 'melon', 'orange'] #=> ["apple", "melon", "orange"]
%w!apple melon orange! #=> ["apple", "melon", "orange"]
%w(apple melon orange) #=> ["apple", "melon", "orange"]
%w(
  apple
  melon
  orange
)
#=> ["apple", "melon", "orange"]

%w(big\ apple small\ melon orange) #=> ["big apple", "small melon", "orange"]

prefix = 'This is'
%W(#{prefix}\ an\ apple small\n melon orange)
#=> ["This is an apple", "small\nmelon", "orange"]

# 4.7.11
'Ruby'.chars #=> ["R", "u", "b", "y"]
'Ruby,Java,Perl,PHP'.split(',') #=> ["Ruby", "Java", "Perl", "PHP"]

# 4.7.12
a = Array.new

a = Array.new(5)
a #=> [nil, nil, nil, nil, nil]

a = Array.new(5, 0)
a #=> [0, 0, 0, 0, 0]

a = Array.new(10) { |n| n % 3 + 1 }
a #=> [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

# 4.7.13
a = Array.new(5, 'default')
a #=> ["default", "default", "default", "default", "default"]

str = a[0]
str #=> "default"

str.upcase!
str #=> "DEFAULT"

a #=> ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]

a = Array.new(5) { 'default' }
a #=> ["default", "default", "default", "default", "default"]

str = a[0]
str #=> "default"

str.upcae!
str #=> "DEFAULT"

a #=> ["DEFAULT", "default", "default", "default", "default"]

# 4.7.14
a = Array.new(5, 0)
a #=> [0, 0, 0, 0, 0]

n = a[0]
n #=> 0

n.negative!
