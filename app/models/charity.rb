class Charity < ApplicationRecord
    has_secure_password
  has_many :donations
  has_many :beneficiaries

  validates :name, :location, :email, :purpose, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }

  after_create :create_notification

  private

  def create_notification
    Admin.all.each do |admin|
      Notification.create(content: "A new charity, #{self.name}, has signed up.", admin: admin)
    end
  end 
end
