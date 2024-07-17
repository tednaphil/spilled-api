# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

teas = [
  {
  name: "Earl Grey Tea",
  slug: "earl-grey",
  image: "https://rishi-tea.com/cdn/shop/files/Rishi-PDP-Carousel-EarlGreySupreme-TC_1500x.jpg?v=1709668282",
  origin: "China (blended with Bergamot from Italy)",
  style: "black",
  caffeine: "50-90mg",
  caffeine_level: "high",
  description: "Earl Grey Tea is a black tea flavored with the oil of bergamot, a type of citrus fruit. It is known for its distinctive, aromatic flavor and is often enjoyed with a slice of lemon or a splash of milk.",
  color_description: "deep-amber",
  taste_description: "The taste is aromatic, floral, and slightly citrusy with a smooth, robust finish."
  }
]

teas.each do |tea|
  Tea.find_or_create_by(tea)
end