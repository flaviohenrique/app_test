class Customer < ActiveResource::Base
  self.site = "http://localhost/"
  has_many :phones
  # has_many :emails
  # has_one :address
end

# class Email < ActiveResource::Base
#   self.site = "http://localhost/"
# end

# class Address < ActiveResource::Base
#   self.site = "http://localhost/"
# end



