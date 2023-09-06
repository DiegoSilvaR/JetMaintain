class User < ApplicationRecord
  # Include default Devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { operador: 0, administrador: 1 }

  # Validaciones
  validates :email, presence: true, uniqueness: true
  #validates :role, presence: true, inclusion: { in: roles.keys }

  # Asociaciones
  has_many :motores, dependent: :destroy
  has_many :mantenimientos, dependent: :destroy

  # Método para asignar el rol por defecto
  #def assign_default_role
  #  self.role ||= :operador
  #end

  # Antes de crear un usuario, asigna el rol por defecto
  #before_create :assign_default_role
end
