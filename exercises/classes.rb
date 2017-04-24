class Business
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Restaurant < Business
end
