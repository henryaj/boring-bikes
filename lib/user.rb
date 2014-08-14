require 'travelling.rb'

class User
  include Travelling

  attr_reader :name, :location

  def initialize(name)
    @name = name
  end

end
