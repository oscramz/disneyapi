class Genero < ApplicationRecord
  belongs_to :peli_serie

  validates :name, presence: true, uniqueness: true
  validates :avatar, presence: true
end
