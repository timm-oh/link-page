class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :links, dependent: :restrict_with_error

  validates :username,
            uniqueness: true,
            presence: true,
            format: { with: /\A[a-zA-Z0-9-_]+\Z/, message: "can only contain alphanumeric characters with underscores or dashes" }

end
