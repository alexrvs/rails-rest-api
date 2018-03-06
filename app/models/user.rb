class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :token_authenticatable

  before_save :ensure_authentication_token

  #attr_accessor :name, :email, :password, :password_confirmation, :remember_me

  validates :email, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true


  def skip_confirmation!
    self.confirmed_at = Time.now
  end


  def name
    "User name: #{@name}"
  end


  def name=(value)
    @name = "Awesome #{value}"
  end

  def full_name

    full_name ||= @full_name.split
    "Full Name -  #{full_name.first} #{full_name.last}"
  end


  def full_name=(value)
    @full_name = value
  end

end
