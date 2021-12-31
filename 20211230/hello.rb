require 'benchmark'
def fibonnaci(n)
    return if n < 0
    return n if n < 2
    fibonnaci(n-1) + fibonnaci(n-2)
end

def fibonnaci1(n)
    return  if n < 0
    return n if n < 2
    a, b = 0, 1
    n.times {a, b = b, a+b}
    a
end
# Benchmark.bm 10 do |r|
#     r.report "Nantoka" do
#         fibonnaci1(150_000)
#     end
#     r.report "fibonnaci" do
#         fibonnaci(40)
#     end
# end
class Hoge
    def initialize(presets)
        @presets = presets
        clean
    end
    private
    def clean
        @presets.delete_if{|f| f[-1].to_i.even?}
    end
end
presets = %w(90.1 100.4 89.4)
tuner = Hoge.new(presets)
puts(presets)
class Dog
    @@name = nil
    def initialize(name)
        @@name = name
    end
    def bark
        puts "hello #{@@name}"
    end
    def self.number(n)
        puts "I have #{n}"
    end
end
class Cat < Dog
    def self.food
        puts "good"
    end
end
Dog.number(10)
Cat.number(30)
pochi = Dog.new("pochi")
pochi.bark

def avg(arr)
    p arr.sum / arr.length
end


avg([1, 2, 3, 4, 5])
module StandardStatistics
    refine Array do
        def sum(arr)
            reduce(:+)
        end

        def mean(arr)
            arr.sum / arr.length
        end

        def var(arr)
            m = self.mean(arr)
            inject(0){ |x, y|
                x + (y - m) ** 2 } / (arr.length - 1)
        end
    end
end


arr = [1, 2, 3, 4, 5]

p avg(arr)