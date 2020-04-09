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
            format: { with: /\A^[^_\s\.-][-A-Z\._]+[^\-_\s\.]\Z/i, message: "can only contain alphanumeric characters with underscores or dashes" }

end
