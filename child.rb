# stores a question & correct answer
#NAME,SURNAME,GENDER,AGE,D.O.B,ADRESS
#Jaden,Allard,male,12,23 -02- 2003,15 St. Bernard Hillview
class Child
  attr_accessor :name, :surname, :gender, :age, :d_o_b, :address
  def initialize(line)
    @name, @surname, @gender, @age, @d_o_b, @address = line.split(',')

    @age = @age.to_i
  end

  def full_name
  	"#{@name} #{@surname}"
  end
end