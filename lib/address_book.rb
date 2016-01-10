class AddressBook

  def contacts
    @contacts ||= []
  end

  def self.load_from_path(path)
    address_book = self.new
    address_book_dsl = AddressBookDSL.new(address_book)
    Dir[File.join(path, '*')].each do |file|
        p file
       address_book_dsl.instance_eval(File.read(file), file)
    end
    address_book
  end

end

