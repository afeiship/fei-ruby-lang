module M
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      scope :disabled, -> { where(disabled: true) }
    end

    include InstanceMethods
  end

  module ClassMethods
    def say_hello
      puts "say hello"
    end
  end

  module InstanceMethods
    def say_no
      puts "say no"
    end
  end
end