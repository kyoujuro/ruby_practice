module FundamentalStatistics
    refine Array do
        def avg
            sum.fdiv(size)
        end
        
        def var
            @avg = avg
            inject(0){ |res, n| res + (n - @avg) ** 2 }.fdiv(size)
        end

        def stdvar
            Math.sqrt(var)
        end

        def convar
            array_x = map{|x| x[0]}
            array_y = map{|y| y[0]}
            @avg_x = array_x.avg
            @avg_y = array_y.avg
            inject(0) { |res, n| res + (n[0] - @avg_x) * (n[1] - @avg_y)}.fdiv(size)
        end 
    end
end

class Summary
    using FundamentalStatistics
    def summary(x, y)
        x_avg = x.avg
        x_var = x.var
        x_stdvar = x.stdvar
        array = x.zip(y)
        convar = array.convar
        p x_avg, x_var, x_stdvar, convar
    end
end

Summary.new.summary([1, 2, 3 ,4, 5],[6, 7, 8, 9, 10])
