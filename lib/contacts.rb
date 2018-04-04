require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
  contacts.each do |outK, outV|
    rtn = []
    outV.each do |inK, inV|
      if inK == :favorite_ice_cream_flavors
        inV.each_with_index do |e, i|
          if e != "strawberry"
            rtn << e
          end
        end
    end
    outV[:favorite_ice_cream_flavors] = rtn
  end
end
