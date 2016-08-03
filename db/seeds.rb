# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    description:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
    stars:        3,
    phone_number: "3102498442",
    category:      "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    description:  "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet",
    stars:        1,
    phone_number: "5701384950",
    category:      "asian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    description:  "Oeil vif, geste sûr: impossible de distinguer, dans les créations de Frédéric Anton...",
    stars:        3,
    phone_number: "3219434667",
    category:      "mediterranean"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
