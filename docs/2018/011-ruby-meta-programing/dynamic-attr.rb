class DynamicAttrDemo1
    attr_accessor :model
    attr_accessor :actions
    attr_accessor :context
end

class DynamicAttrDemo2
    %w(model actions context).each do |el|
        attr_accessor el
    end
end


# DEMO1
# demo1 = DynamicAttrDemo1.new
# demo1.model = 1234;

# p demo1.model;

demo2 = DynamicAttrDemo2.new
demo2.model = 'model1';
demo2.actions = 'actions1';

p demo2.model
p demo2.actions