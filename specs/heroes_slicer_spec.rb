require './lib/heroes_slicer'

RSpec.describe HeroesSlicer do
  it 'instantiates with a number provided' do
    heroes_slicer = HeroesSlicer.new(5)

    expect(heroes_slicer).to be_instance_of(HeroesSlicer)
  end
end