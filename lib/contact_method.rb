class ContactMethod

  attr_reader :contact
  attr_accessor :type, :role, :value

  def initialize(contact)
    @contact = contact
  end

end

