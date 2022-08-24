def Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    book.rentals.push(self)
    person.rentals.push(self)
  end
  
  def rentals
    "#{@book.title}: #{@person.name} #{@date}"
  end
end