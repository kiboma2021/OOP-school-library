module App
  def list_books(books)
    if books.empty?
      puts 'No book registered yet!'
    else
      books.each do |book|
        puts "TITLE: #{book.title}"
        puts "AUTHOR #{book.author}"
      end
    end
  end

  def list_people(people)
    if people.empty?
      puts 'No person registered!'
    else
      people.each do |person|
        puts "ID: #{person.id}"
        puts "NAME:  #{person.name}"
        puts "AGE: #{person.age}"
      end
    end
  end

  def list_rentals(rentals, name)
    if rentals.empty?
      puts "No rental registed for #{name}!"
    else
      puts 'Registered Rentals: '
      rentals.each do |rental|
        next if rental.person.name != name

        puts "DATE: #{rental.date}"
        puts rental.rentals
      end
    end
  end

  def create_people(people, person)
    people.push(person)
  end

  def create_book(books, book)
    books.push(book)
  end

  def create_rental(rentals, rental)
    rentals.push(rental)
  end
end
