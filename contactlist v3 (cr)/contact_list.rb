require_relative 'contact'
require 'pp'
require 'pry'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.
  if ARGV.empty?
    puts "Here is a list of available commands:
    new (first, lastname, email) - Create a new contact
    list                         - List all contacts
    show (id)                    - Show a contact
    search (any search term)     - Search contacts"
  end



  case ARGV[0]

  when "new"
    new_contact = Contact.create(name: ARGV[1].downcase, email: ARGV[2])
    puts "Contact created"
  when "list"
    Contact.all.order(:id).each do |c|
      puts c.output
    end
  when "show"
    contact = Contact.find(ARGV[1].to_i)
    puts contact.output
  when "search"
    contact = Contact.find_by(name: ARGV[1].downcase)
    puts contact.output
  when "update"
    id = ARGV[1].to_i
    update_contact = Contact.find(id)
    puts "What would you like to change this contacts name to?"
    new_name = STDIN.gets.chomp
    new_email = STDIN.gets.chomp
    update_contact.name = new_name
    update_contact.email = new_email
    update_contact.save
    puts "Contact updated"
  when "destroy"
    Contact.destroy(ARGV[1].to_i)
  end

# puts Contact.all
# puts Contact.find(2)
# @contact1 = Contact.create("Ray", "siddiqui.ra@gmail.com")
# @contact2 = Contact.create("Sandy", "sandy.grewal@gmail.com")
# Contact.search("Sandy")