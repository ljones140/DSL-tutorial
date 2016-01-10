# DSL Tutorial

This is a basic ruby DSL(Domain Specific Language). The purpose to increase my
knowledge of DSLs. It's based on this great Tutorial here:
https://blog.atechmedia.com/ruby-dsls-for-fun/

## Install
```sh
git clone git@github.com:ljones140/DSL-tutorial.git
cd DSL-tutorial
ruby runner.rb
```

## Using the DSL
To add contacts edit the contact file in lib/contacts/contacts.rb.
This file is essentially the DSL. It allows contacts to be added in a human
readable format.

Contacts are blocks which are instantiated into contact models via the DSL.
Contacts can be added in the format below
```ruby
contact do

  name 'Lewis', 'Jones'
  company 'Bloggs Inc'

  phone :home, '01234 123123'
  phone :work, '01555 123555'
  email :home, "test@test.com"

  activities << 'Eating Cheese'
  activities << 'beer making'
  activities << 'dog walking'

end
```
