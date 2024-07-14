# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Tea.find_or_create_by!(name: "Assam Tea", slug:"assam", image:"https://upload.wikimedia.org/wikipedia/commons/3/3b/Assam-Tee_SFTGFOP1.jpg", origin:"Assam, India", style:"black", caffeine:"60-110mg", caffeineLevel:"high", description:"Assam tea is mostly grown at or near sea level and is known for its body, briskness, malty flavour, and strong, bright colour. Assam teas, or blends containing Assam, are often sold as \"breakfast\" teas.", colorDescription:"deep-amber", tasteDescription:"The flavor can range from brisk, smokey, earthy, musky and strong to a lighter cup with chocolate, cocoa, or even sweet and spicy notes")