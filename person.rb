class Person
  def initialize(name = "Unknown",age,parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def id
    @id
  end

  def name
    @name
  end

  def age
    @age
  end

  def name = (value)
    @name = value
  end

  def is_of_age
    if @age >= 18
      true
    else
      false
    end
  end
end

def can_use_services
  if is_of_age() or if @parent_permission = true
    true  
  end
end