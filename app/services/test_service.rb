class TestService < ApplicationService
  def initialize(name="")
    @name = name
  end

  def call
    puts "Hola #{@name}!!"
  end
end
