class User < ApplicationRecord
  enum role: {
    registerable: 0,
    publisher: 1,
    admin: 2
  }

  enum status: {
    active: 0,
    inactive: 1
  }


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
