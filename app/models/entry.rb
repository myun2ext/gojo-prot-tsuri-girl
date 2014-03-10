class Entry < ActiveRecord::Base
  has_one :entried_position
  has_one :entried, as: :entried_position  # aliae
  has_one :position, as: :entried_position # alias
  has_many :entry_images
  has_many :images, as: :entry_images

  delegate :latitude, :latitude=, to: :entried_position, allow_nil: true
  delegate :longitude, :longitude=, to: :entried_position, allow_nil: true

  def self.new(attributes = nil, options = {})
    new_entry = super(attributes, options)
    new_entry
  end

  def image
    self.entry_images.first.try(:image)
  end

  def image=(image)
    self.entry_images = [EntryImage.new(image: image)]
  end
end
