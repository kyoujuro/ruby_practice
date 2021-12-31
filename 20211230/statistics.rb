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
    end
end

class Summary
    using FundamentalStatistics
    def summary
        x = [1, 2, 3, 4, 5]
        x_avg = x.avg
        x_var = x.var
        x_stdvar = x.stdvar
        p x_avg, x_var, x_stdvar
    end
end

Summary.new.summary
