require 'spec_helper'

describe Mockaroo do

  before(:each) do
    @file = Mockaroo.new('mockaroo.json')
  end

  it "should return a name of type String" do
    expect(@file.first_name).to be_a(String)
  end

  it "should return the expected first name" do
    expect(@file.first_name).to eq("Miranda")
  end


  it "should return the first x first names and/or last names" do
    expect(@file.first_names(2)).to contain_exactly("Miranda","Thorin")
    expect(@file.last_names(3)).to contain_exactly("Dow", "Dowtry", "Goch")
  end

  it "should retrieve the favourite number of xth person" do
    expect(@file.fav_num(1)).to eq(57)
  end

  it "should retrieve the favourite country of xth person" do
    expect(@file.fav_country(3)).to eq("Brazil")
  end

  it "should retrieve the favourite animals of xth person" do
    expect(@file.fav_animals(2)).to contain_exactly("Colobus, white-mantled","Jaguarundi","Barbet, crested","Goldeneye, common")
  end

end
