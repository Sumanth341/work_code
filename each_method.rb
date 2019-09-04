class Each_class
    attr_writer :arr
    def each_method
        for a in @arr
            yield a
        end
    end
end
a=Each_class.new
a.arr=[1,2,3]
a.each_method { |n| puts "Numner #{n}" }