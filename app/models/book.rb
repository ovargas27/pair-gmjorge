class Book < ActiveRecord::Base
  attr_accessible :ISBN, :author, :title, :status
  validates :ISBN, :numericality => { only_integer: true}
  alias_attribute :numero_libro, :ISBN
end
