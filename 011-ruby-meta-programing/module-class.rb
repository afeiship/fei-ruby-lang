module MyModule
    def method1
        p 'method1'
    end

    def method2
        p 'method2'
    end
end



class MyClass
    include MyModule
    def say
        method1
    end
end


demo1 = MyClass.new
demo1.say


# p MyModule.instance_methods