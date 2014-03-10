class Entry < ActiveRecord::Base
  has_one :entried_position
  has_one :entried, as: :entried_position  # aliae
  has_one :position, as: :entried_position # alias

  delegate :latitude, :latitude=, to: :entried_position, allow_nil: true
  delegate :longitude, :longitude=, to: :entried_position, allow_nil: true

  def self.new(attributes = nil, options = {})
    new_entry = super(attributes, options)
    new_entry.entried_position = EntriedPosition.new
    new_entry
  end
end
