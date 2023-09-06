class Motor < ApplicationRecord
  enum tipo_equipo: {
    'Motor a reacción' => 'REAC',
    'Motor turbohélice' => 'TURBO'
  }
  has_many :mantenimientos, dependent: :destroy  # Esto asume que tienes una relación con el modelo Mantenimiento
  validates :nombre, format: { with: /\A(REAC|TURBO)-\d+\z/, message: "debe seguir el formato REAC-numero o TURBO-numero" }
  belongs_to :user
  has_one_attached :image
end
