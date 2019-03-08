#!/usr/bin/env ruby -wKU
class Customer
  @@no_of_customers=0

  def initialize(id,name,addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
  end

  def sayHi
    puts "Hello, i am a function"
  end

end

# initial
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

cust1.sayHi