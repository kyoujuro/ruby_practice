TEST = ["first", "second"]
TEST.freeze

"12345".split(/3/)
# ["12", "45"]

dirs = ['usr', 'Desktop', 'practice']
#=> ["usr", "Desktop", "practice"]
File.join *dirs
#=> "usr/Desktop/practice"
File.join(dirs)
#=> "usr/Desktop/practice"
File.join(*dirs)
#=> "usr/Desktop/practice"
dirs.map &:length
#=> [3, 7, 8]

class Car
  def color
    p "red"
  end
end
#=> :color
class Bike < Car
Bike.superclass

#bike = Bike.new

words = %w[this is the test]
#=> ["this", "is", "the", "test"]
words = %q[this is the test]
#=> "this is the test"

empty = Array.new
#=> []
nils = Array.new(3)
#=> [nil, nil, nil]
test = Array.new(3, 1)
#=> [1, 1, 1]
count = Array.new(5) {|i| i+1}
#=> [1, 2, 3, 4, 5]

a = ('a'...'g').to_a
#=> ["a", "b", "c", "d", "e", "f"]
a = ('a'...'g').to_s
#=> "a...g"

test.include?1999
#=> true


words.cover? "AAA"
#=> true
words.cover? "AA"
#=> false
words.cover? "AAD"
#=> true
words.cover? "AAG"
#=> true

str = "string"
#=> "string"
sym = str.intern
#=> :string
sym = sym.to_s
#=> "string"
#Symbolの方がメモリが軽い
#=> true

(1..10) == 5
#=> false
(1..10) === 5
#=> true

  
1 <=> 5
#=> -1
7 <=> 5
#=> 1

s = "untrusted"
#=> "untrusted"
s
#=> "untrusted"
s.taint
#=> "untrusted"
s
#=> "untrusted"
s.tainted?
#=> true
s[3,4].tainted?
#=> true


  
array = [1,2,3,4,5]
for element in array
    puts element
end

hash = {:a=>1, :b=>2, :c=>3}
for key, value in hash
    puts "#{key} => #{value}"
end

4.upto(8) {|x| print x}

def sequence(n, m, c)
    i = 0
    while(i < n)
        yield m*i + c
        i += 1
    end
end

sequence(3,5,1) {|y| p y}

def circle(r, n)
    n.times do |i|
        angle = Math::PI * 2 * i / n
        yield r*Math.cos(angle), r*Math.sin(angle)
    end
end
circle(1,100) {|x,y| printf "(%.2f, %.2f)", x, y}

def sequence2(n, m, c)
    i, s = 0, []
    while(i < n)
        y = m*i + c
        yield y if block_given?
        s << y
        i += 1
    end
    s
end

sequence2(5,4,3) {|y| p y}

s = "Hello World"
s.enum_for(:each_char).map {|c| print c.succ}

sequence(2,3,4) { |y| print y}
