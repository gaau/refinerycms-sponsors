class Sponsor < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :url, :description]

  validates :title, :presence => true, :uniqueness => true
  validates_presence_of :image
  
  has_friendly_id :title, :use_slug => true
  
  belongs_to :logo, :class_name => 'Image'
  
  def self.random
    if (c = count) != 0
      find(:first, :offset =>rand(c))
    end
  end
end
