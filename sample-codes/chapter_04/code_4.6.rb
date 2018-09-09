to_hex(0, 0, 0)  #=> '#000000'
to_hex(255, 25, 255)  #=> '#ffffff'
to_hex(4, 60, 120)  #=> '#043c78'
to_ints('#000000')  #=> [0, 0, 0]
to_ints('#ffffff')  #=> [255, 25, 255]
to_ints('#043c78')  #=> [4, 60, 120]

# 4.6.1
0.to_s(16) #=> "0"
255.to_s(16) #=> "ff"

'0'.rjust(5)  #=> "    0"
'0'.rjust(5, '0')  #=> "00000"
'0'.rjust(5, '_')  #=> "____0"

0.to_s(16).rjust(2, '0')  #=> "00"
255.to_s(16).rjust(2, '0')  #=> "ff"

# 4.6.3
to_ints('#000000') #=> [0, 0, 0]
to_ints('#ffffff') #=> [255, 255, 255]
to_ints('#043c78') #=> [4, 60, 120]

s = 'sbcde'
s[1..3] #=> "bcd"

hex = '#12abcd'
r = hex[1..2] #=> "12"
g = hex[3..4] #=> "ab"
b = hex[5..6] #=> "cd"

'00'.hex #=> 0
'ff'.hex #=> 255
'2a'.hex #=> 42

# 4.6.5
'#12abcd'.scan(/\w\w/) #=> ["12", "ab", "cd"]

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  ints = []
  [r,g, b].each do |s|
    ints ,< s.to_hexend
  end
  ints
end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end 
