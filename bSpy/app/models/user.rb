class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  Roles = [:admin, :default]
  def admin?
  	self.profile.name == "Administrador" || self.profile.name == "Admin"
  	# self.role == requested_role.to_s
  end
end

