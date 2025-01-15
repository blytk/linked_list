require_relative 'LinkedList.rb'
require_relative 'Node.rb'

list = LinkedList.new("List1")

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list