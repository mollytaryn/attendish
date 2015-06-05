class Student < ActiveRecord::Base
  has_many :attendances

  validates :name, presence: true

  default_scope ->{ order(:name) }
end
