require_relative '../register'

describe Register do
  before do
    @register = Register.new('spec/test_children.csv')
    @register.trim
  end

  it 'trims the child objects that came from extra lines in the csv' do
    @register2 = Register.new('children.csv')
    expect(@register2.children[0].name).to eq('NAME')
    expect(@register2.children[30].name).to eq(nil)
    expect(@register2.children[31].name).to eq(nil)
    expect(@register2.children[32].name).to eq(nil)
    expect(@register2.children.size).to eq(58)

    @register2.trim

    expect(@register2.children[29].name).to eq("Chelsea")
    expect(@register2.children[30].name).to eq("Kameesha")
    expect(@register2.children[32].name).to eq("Tatum")

    expect(@register2.children.size).to eq(54)
    expect(@register2.children[0].name).to eq('Amy')
  end

  it 'has an array of children' do
    expect(@register.children.class).to eq(Array)
  end

  it 'can access the attributes of a child' do
    expect(@register.children[0].name).to eq('Amy')
    expect(@register.children[0].surname).to eq('Langeveld')
  end

  it 'gives a list of children of a certain age' do
    expect(@register.children_age(10).class).to eq(Array)
    @register.children_age(10).each do |child|
      expect(child.age).to eq(10)
    end

    @register.children_age(11).each do |child|
      expect(child.age).to eq(11)
    end

  end
end
