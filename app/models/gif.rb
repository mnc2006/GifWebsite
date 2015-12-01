class Gif < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :link, :user_id

end
