class Customer < ActiveResource::Base
  self.site = "http://localhost/"

  schema = {'id' => :integer, 'opt_in_locaweb' => :boolean, 'manager_id' => :decimal, 'created_at' => :datetime }

  # schema do
  #   boolean :opt_in_locaweb
  #   datetime :created_at
  #   decimal :manager_id
  # end
	# attribute 'login', :string
	# integer 'id'
 #  	# integer "id"
 #  	# string "login"
 #  	# created_at "datetime"
 #  	# opt_in_locaweb "boolean"


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

#   "id":          "19379799",
#   "login":       "jackiechan2010",
#   "created_at":      "2011-07-01",
#   "opt_in_locaweb":  true,


# string text integer float decimal datetime timestamp time date binary boolean