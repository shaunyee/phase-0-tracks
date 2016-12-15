require_relative'Genie'
describe Genie do
  let(:genie) { Genie.new("bob", 33) }

  it "has a readable name" do
    expect(genie.name).to eq "bob"
  end

  it "has a readable age" do
    expect(genie.age).to eq 33
  end
  
end
