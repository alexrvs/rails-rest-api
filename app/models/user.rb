class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :token_authenticatable

  before_save :ensure_authentication_token

  attr_accessor :name, :email, :password, :password_confirmation, :remember_me

  validates :first_name,
            :last_name,
            :phone,
            :email,
            :address,
            :city,
            :state,
            :zip,
            presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true


  def skip_confirmation!
    self.confirmed_at = Time.now
  end

end
