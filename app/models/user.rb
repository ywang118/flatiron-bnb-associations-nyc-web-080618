class User < ActiveRecord::Base
  #guest
  has_many :trips,  :class_name => "Reservation", :foreign_key =>"guest_id"
  has_many :reviews, :foreign_key => "guest_id"
  #host
  has_many :listings, :foreign_key =>"host_id"
  has_many :reservations, through: :listings, :foreign_key =>"listing_id"
end
