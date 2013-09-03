class Phone < ActiveResource::Base
  self.site = "http://localhost/"  
  self.prefix = "/customers/:customer_id/"
end