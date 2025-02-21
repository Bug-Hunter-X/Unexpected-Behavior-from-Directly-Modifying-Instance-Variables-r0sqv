```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def setValue(new_value)
    # Add any validation or side effects here
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.setValue(20) # Using setter method
puts my_object.value # => 20
```