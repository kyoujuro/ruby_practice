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
