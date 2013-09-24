class User < ActiveRecord::Base
  attr_accessible :username, :password, :favorites

  
end
