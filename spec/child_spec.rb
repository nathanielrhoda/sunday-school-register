require_relative '../child'

describe Child do
  before do
    @child = Child.new("Jaden,Allard,male,12,23 -02- 2003,15 St. Bernard Hillview")
  end

  it 'has a name' do
    expect(@child.name).to eq("Jaden")
  end

  it 'has a surname' do
    expect(@child.surname).to eq("Allard")
  end

  it 'has a gender' do
    expect(@child.gender).to eq("male")
  end

  it 'has a age that is a number' do
    expect(@child.age).to eq(12)
  end

  it 'has a date of birth' do
    expect(@child.d_o_b).to eq("23 -02- 2003")
  end

  it 'has a address' do
    expect(@child.address).to eq("15 St. Bernard Hillview")
  end

  it 'has a full name' do
    expect(@child.full_name).to eq("Jaden Allard")
    @child2 = Child.new("Mignon,Strydom,female,13,18 -11- 2002,45 Seemu Cres. Seawinds")
    expect(@child2.full_name).to eq("Mignon Strydom")
  end
end