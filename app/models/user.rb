class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { manager: 0, chef: 1, back_of_house: 2, front_of_house: 3 }
end
