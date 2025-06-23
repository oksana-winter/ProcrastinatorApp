class User < ApplicationRecord
  # Include Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Add association with tasks
  has_many :tasks

  # Other methods and validations of the model...
end
