class HeroesSlicer
  attr_reader :num_heroes, :available_hero_ids
  LAST_HERO_ID = 731.freeze

  def initialize(num_heroes)
    @num_heroes = num_heroes
    @available_hero_ids = fill_available_hero_ids
  end

  private

  def fill_available_hero_ids
    @available_hero_ids = (1..LAST_HERO_ID).to_a
  end
end