class Recipe < ActiveRecord::Base
  attr_accessible :cost, :image, :ingredients, :last_made, :made_by, :name, :serves, :avatar
  validates_presence_of :name, :ingredients, :made_by
  validates_numericality_of :serves, :only_integer => true
  validates_uniqueness_of :name
  
  has_many :reviews, :dependent => :destroy
  has_attached_file :avatar
  # , :styles => { :original => "300x300>", :thumb => "100x100>" }
end
