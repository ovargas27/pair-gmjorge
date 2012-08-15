class Book < ActiveRecord::Base
  attr_accessible :ISBN, :author, :title, :user_id
  validates :ISBN, :numericality => { only_integer: true}
  alias_attribute :numero_libro, :ISBN

  belongs_to :user

  before_save :set_default_status

  protected
  def set_default_status
    self.status = "available" unless self.status
  end
end
