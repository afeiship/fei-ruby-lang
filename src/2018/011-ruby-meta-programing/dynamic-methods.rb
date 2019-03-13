class DynamicMethodsDemo
    p 'hello'
    %w(hello hi say).each do |method|
        define_method method do
            p 'hello+++> #{$method}'
        end
    end
end



demo1 = DynamicMethodsDemo.new

demo1.hello
demo1.hi
demo1.say