Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

address_book = AddressBook.load_from_path('./lib/contacts')
address_book.contacts.each do |contact|
  puts "#{contact.first_name} #{contact.last_name}"
  puts contact.company
  puts contact.activities
end
