class Book < ActiveRecord::Base
  attr_accessible :ISBN, :author, :title, :user_id
  validates :ISBN, :numericality => { only_integer: true}
  alias_attribute :numero_libro, :ISBN

  belongs_to :user
end
