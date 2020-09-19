require './lib/heroes_slicer'

RSpec.describe HeroesSlicer do
  context 'is valid' do
    it 'when passing the number of heroes to be sliced' do
      heroes_slicer = HeroesSlicer.new(5)
  
      expect(heroes_slicer).to be_instance_of(HeroesSlicer)
    end
  end

  context 'raise an ArgumentError' do
    it 'when the number is not provided' do
      expect { 
        heroes_slicer = HeroesSlicer.new
      }.to raise_error(ArgumentError)
    end
  end

  context 'LAST_HERO_ID' do
    it 'returns an integer' do
      expect(HeroesSlicer::LAST_HERO_ID).to be_kind_of(Integer)
    end
  end

  context 'available_hero_ids' do
    let(:available_hero_ids) { HeroesSlicer.new(5).available_hero_ids }

    it 'is an array' do
      expect(available_hero_ids).to be_instance_of(Array)
    end

    it 'is initialized with all hero ids' do
      total_hero_ids = HeroesSlicer::LAST_HERO_ID
      expect(available_hero_ids.length).to eq(total_hero_ids)
    end
  end
end