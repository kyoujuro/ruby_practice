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
