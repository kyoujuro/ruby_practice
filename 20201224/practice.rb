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
