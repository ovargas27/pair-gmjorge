class Book < ActiveRecord::Base
  attr_accessible :ISBN, :author, :title
  validates :ISBN, :numericality => { only_integer: true}
  alias_attribute :numero_libro, :ISBN
end
