require_relative 'child'

# asks the user questions & receives their answers
class Register
  attr_reader :children
  def initialize(file)
    @children = []
    File.readlines(file).each do |line|
      @children << Child.new(line.chomp)
    end
  end

  def trim
  	@children = @children.select { |n| n.name != "NAME" }
  	@children = @children.select { |n| n.name != nil }
  end

  def children_age(selected_age)
  	selected_children = @children.select { |n| n.age = selected_age }
  	selected_children
  end
end


if __FILE__ == $0
	register = Register.new('children.csv')
	register.trim
	all_children = register.children
	ten_year_olds = register.children_age(10)
	puts all_children
end