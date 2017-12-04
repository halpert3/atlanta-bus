class Location < ApplicationRecord
  geocoded_by :full_street_address
  after_validation :geocode

 def full_street_address
    "#{street_address.titleize}, #{city.titleize}, GA"
 end


 def has_been_geocoded?
    :geocode until self.geocoded?
 end

end