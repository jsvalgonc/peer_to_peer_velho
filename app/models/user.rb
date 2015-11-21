class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    #attr_accessible :name, :provider, :uid
    
    #this is a class method, callable from SessionController
    #hence the "User."
end
