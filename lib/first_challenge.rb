require "pry"

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

contacts.map do |person, value|
  value.map do |attribute, result|
    if attribute == :favorite_icecream_flavors
      result.delete_if do |flavor|
        flavor == "strawberry"
      end
    end
  end
end
return contacts
end
