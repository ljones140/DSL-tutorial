Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

address_book = AddressBook.load_from_path('./lib/contacts')
puts 'hello'
p address_book.contacts
address_book.contacts.each do |contact|
  puts "#{contact.first_name} #{contact.last_name}"
  puts contact.company
end
