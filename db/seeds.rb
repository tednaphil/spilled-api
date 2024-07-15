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
    name: "Assam Tea", 
    slug: "assam", 
    image: "https://upload.wikimedia.org/wikipedia/commons/3/3b/Assam-Tee_SFTGFOP1.jpg", 
    origin: "Assam, India", 
    style: "black", 
    caffeine: "60-110mg", 
    caffeineLevel: "high", 
    description: "Assam tea is mostly grown at or near sea level and is known for its body, briskness, malty flavour, and strong, bright colour. Assam teas, or blends containing Assam, are often sold as 'breakfast' teas.", 
    colorDescription: "deep-amber", 
    tasteDescription: "The flavor can range from brisk, smokey, earthy, musky and strong to a lighter cup with chocolate, cocoa, or even sweet and spicy notes" 
  },
  { 
    name: "Darjeeling Tea", 
    slug: "darjeeling", 
    image: "https://upload.wikimedia.org/wikipedia/commons/6/6b/Darjeeling_tea_leaves.jpg", 
    origin: "Darjeeling, India", 
    style: "black", 
    caffeine: "50-90mg", 
    caffeineLevel: "medium", 
    description: "Darjeeling tea is a light, aromatic black tea grown in the Darjeeling district of West Bengal, India. It is known as the 'Champagne of teas' due to its unique flavor and quality.", 
    colorDescription: "light-golden", 
    tasteDescription: "The taste is light, floral, and slightly fruity with a hint of muscatel." 
  },
  { 
    name: "Sencha", 
    slug: "sencha", 
    image: "https://upload.wikimedia.org/wikipedia/commons/2/21/Sencha.jpg", 
    origin: "Japan", 
    style: "green", 
    caffeine: "20-30mg", 
    caffeineLevel: "low", 
    description: "Sencha is a Japanese green tea known for its fresh, grassy flavor and bright green color. It is the most popular tea in Japan.", 
    colorDescription: "bright-green", 
    tasteDescription: "The taste is fresh, grassy, and slightly sweet with a hint of umami." 
  },
  { 
    name: "Matcha", 
    slug: "matcha", 
    image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Matcha.jpg", 
    origin: "Japan", 
    style: "green", 
    caffeine: "35-70mg", 
    caffeineLevel: "medium", 
    description: "Matcha is a type of powdered green tea from Japan. It is known for its vibrant green color, rich flavor, and health benefits. It is often used in traditional Japanese tea ceremonies.", 
    colorDescription: "vibrant-green", 
    tasteDescription: "The taste is rich, creamy, and slightly sweet with a hint of bitterness." 
  },
  { 
    name: "Oolong Tea", 
    slug: "oolong", 
    image: "https://upload.wikimedia.org/wikipedia/commons/4/49/Oolong_tea_leaf.jpg", 
    origin: "China and Taiwan", 
    style: "oolong", 
    caffeine: "30-50mg", 
    caffeineLevel: "medium", 
    description: "Oolong tea is a traditional Chinese tea that is partially oxidized. It is known for its complex flavor, which can range from floral and fruity to woody and roasted.", 
    colorDescription: "amber", 
    tasteDescription: "The taste is complex, with notes ranging from floral and fruity to woody and roasted." 
  },
  { 
    name: "Chamomile Tea", 
    slug: "chamomile", 
    image: "https://upload.wikimedia.org/wikipedia/commons/4/4a/Chamomile_tea_2.jpg", 
    origin: "Europe", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Chamomile tea is made from the dried flowers of the chamomile plant. It is known for its calming properties and mild, floral flavor.", 
    colorDescription: "pale-golden", 
    tasteDescription: "The taste is mild, floral, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Jasmine Tea", 
    slug: "jasmine", 
    image: "https://upload.wikimedia.org/wikipedia/commons/8/8c/Jasmine_tea_leaves.jpg", 
    origin: "China", 
    style: "green", 
    caffeine: "15-60mg", 
    caffeineLevel: "low to medium", 
    description: "Jasmine tea is a scented tea made by blending green tea leaves with jasmine flowers. It is known for its fragrant aroma and delicate, sweet flavor.", 
    colorDescription: "pale-yellow", 
    tasteDescription: "The taste is delicate, sweet, and floral with a smooth finish." 
  },
  { 
    name: "Rooibos", 
    slug: "rooibos", 
    image: "https://upload.wikimedia.org/wikipedia/commons/a/a8/Rooibos_tea_in_a_cup.jpg", 
    origin: "South Africa", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Rooibos, also known as red bush tea, is a herbal tea from South Africa. It is known for its sweet, nutty flavor and reddish-brown color.", 
    colorDescription: "reddish-brown", 
    tasteDescription: "The taste is sweet, nutty, and slightly earthy with a smooth finish." 
  },
  { 
    name: "White Tea", 
    slug: "white", 
    image: "https://upload.wikimedia.org/wikipedia/commons/2/25/White_tea_leaf.jpg", 
    origin: "Fujian, China", 
    style: "white", 
    caffeine: "15-30mg", 
    caffeineLevel: "low", 
    description: "White tea is the least processed of all teas, made from young tea leaves and buds. It is known for its delicate flavor and light color.", 
    colorDescription: "pale-golden", 
    tasteDescription: "The taste is delicate, sweet, and slightly floral with a smooth finish." 
  },
  { 
    name: "Hojicha", 
    slug: "hojicha", 
    image: "https://upload.wikimedia.org/wikipedia/commons/7/7b/Hojicha.jpg", 
    origin: "Japan", 
    style: "green", 
    caffeine: "20-50mg", 
    caffeineLevel: "low", 
    description: "Hojicha is a Japanese green tea that is roasted over charcoal. It is known for its toasty, slightly caramel-like flavor and brown color.", 
    colorDescription: "brown", 
    tasteDescription: "The taste is toasty, slightly caramel-like, and smooth with a hint of sweetness." 
  },
  { 
    name: "Genmaicha", 
    slug: "genmaicha", 
    image: "https://upload.wikimedia.org/wikipedia/commons/3/37/Genmaicha.jpg", 
    origin: "Japan", 
    style: "green", 
    caffeine: "20-30mg", 
    caffeineLevel: "low", 
    description: "Genmaicha is a Japanese green tea mixed with roasted brown rice. It is known for its nutty, toasty flavor and light green color.", 
    colorDescription: "light-green", 
    tasteDescription: "The taste is nutty, toasty, and slightly grassy with a smooth finish." 
  },
  { 
    name: "Hibiscus Tea", 
    slug: "hibiscus", 
    image: "https://upload.wikimedia.org/wikipedia/commons/7/70/Hibiscus_tea.jpg", 
    origin: "Global", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Hibiscus tea is made from the dried petals of the hibiscus flower. It is known for its tart, cranberry-like flavor and deep red color.", 
    colorDescription: "deep-red", 
    tasteDescription: "The taste is tart, fruity, and slightly sweet with a refreshing finish." 
  },
  { 
    name: "Yerba Mate", 
    slug: "yerba-mate", 
    image: "https://upload.wikimedia.org/wikipedia/commons/7/7e/Yerba_Mate.jpg", 
    origin: "South America", 
    style: "herbal", 
    caffeine: "85-100mg", 
    caffeineLevel: "high", 
    description: "Yerba Mate is a traditional South American herbal tea made from the leaves of the Ilex paraguariensis plant. It is known for its strong, earthy flavor and high caffeine content.", 
    colorDescription: "light-brown", 
    tasteDescription: "The taste is strong, earthy, and slightly bitter with a smoky undertone." 
  },
  { 
    name: "Peppermint Tea",

 
    slug: "peppermint", 
    image: "https://upload.wikimedia.org/wikipedia/commons/4/45/Peppermint_tea_2.jpg", 
    origin: "Europe and the Middle East", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Peppermint tea is made from the dried leaves of the peppermint plant. It is known for its refreshing, minty flavor and soothing properties.", 
    colorDescription: "pale-green", 
    tasteDescription: "The taste is refreshing, minty, and slightly sweet with a cool finish." 
  },
  { 
    name: "Pu-erh Tea", 
    slug: "pu-erh", 
    image: "https://upload.wikimedia.org/wikipedia/commons/6/68/Pu-erh_tea_leaves.jpg", 
    origin: "Yunnan, China", 
    style: "dark", 
    caffeine: "30-70mg", 
    caffeineLevel: "medium", 
    description: "Pu-erh tea is a type of fermented tea from Yunnan, China. It is known for its rich, earthy flavor and dark color. It is often aged for several years.", 
    colorDescription: "dark-brown", 
    tasteDescription: "The taste is rich, earthy, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Lapsang Souchong", 
    slug: "lapsang-souchong", 
    image: "https://upload.wikimedia.org/wikipedia/commons/1/15/Lapsang_Souchong.jpg", 
    origin: "Fujian, China", 
    style: "black", 
    caffeine: "40-70mg", 
    caffeineLevel: "medium", 
    description: "Lapsang Souchong is a Chinese black tea that is dried over pinewood fires. It is known for its distinctive smoky flavor and dark color.", 
    colorDescription: "dark-brown", 
    tasteDescription: "The taste is smoky, rich, and slightly sweet with a bold finish." 
  },
  { 
    name: "Ginger Tea", 
    slug: "ginger", 
    image: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Ginger_tea.jpg", 
    origin: "Global", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Ginger tea is made from the root of the ginger plant. It is known for its spicy, warming flavor and potential health benefits.", 
    colorDescription: "pale-yellow", 
    tasteDescription: "The taste is spicy, warming, and slightly sweet with a zesty finish." 
  },
  { 
    name: "Butterfly Pea Flower Tea", 
    slug: "butterfly-pea-flower", 
    image: "https://upload.wikimedia.org/wikipedia/commons/2/23/Butterfly_pea_flower_tea.jpg", 
    origin: "Southeast Asia", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Butterfly Pea Flower Tea is made from the flowers of the Clitoria ternatea plant. It is known for its vibrant blue color and mild, earthy flavor. The color changes to purple when lemon juice is added.", 
    colorDescription: "vibrant-blue", 
    tasteDescription: "The taste is mild, earthy, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Chai Tea", 
    slug: "chai", 
    image: "https://upload.wikimedia.org/wikipedia/commons/5/54/Chai_tea.jpg", 
    origin: "India", 
    style: "black", 
    caffeine: "50-120mg", 
    caffeineLevel: "high", 
    description: "Chai tea is a spiced tea from India, typically made with black tea, milk, sugar, and a blend of spices such as cardamom, cinnamon, ginger, and cloves. It is known for its rich, spicy flavor and warming properties.", 
    colorDescription: "rich-brown", 
    tasteDescription: "The taste is rich, spicy, and sweet with a creamy texture." 
  },
  { 
    name: "Rose Tea", 
    slug: "rose", 
    image: "https://upload.wikimedia.org/wikipedia/commons/5/58/Rose_tea.jpg", 
    origin: "China", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Rose tea is made from the dried petals and buds of rose flowers. It is known for its fragrant aroma and light, floral flavor.", 
    colorDescription: "pale-pink", 
    tasteDescription: "The taste is light, floral, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Lavender Tea", 
    slug: "lavender", 
    image: "https://upload.wikimedia.org/wikipedia/commons/7/74/Lavender_tea.jpg", 
    origin: "Europe", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Lavender tea is made from the dried buds of the lavender plant. It is known for its calming properties and light, floral flavor.", 
    colorDescription: "pale-purple", 
    tasteDescription: "The taste is light, floral, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Mint Tea", 
    slug: "mint", 
    image: "https://upload.wikimedia.org/wikipedia/commons/a/a4/Mint_tea.jpg", 
    origin: "Global", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Mint tea is made from the dried leaves of various mint plants. It is known for its refreshing, cooling flavor and soothing properties.", 
    colorDescription: "pale-green", 
    tasteDescription: "The taste is refreshing, minty, and slightly sweet with a cool finish." 
  },
  { 
    name: "Oolong Milk Tea", 
    slug: "oolong-milk", 
    image: "https://upload.wikimedia.org/wikipedia/commons/2/29/Oolong_milk_tea.jpg", 
    origin: "Taiwan", 
    style: "oolong", 
    caffeine: "30-50mg", 
    caffeineLevel: "medium", 
    description: "Oolong Milk Tea is a Taiwanese oolong tea known for its creamy, milky flavor and smooth finish. It is often enjoyed with added milk or cream.", 
    colorDescription: "light-brown", 
    tasteDescription: "The taste is creamy, milky, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Blueberry Tea", 
    slug: "blueberry", 
    image: "https://upload.wikimedia.org/wikipedia/commons/a/ae/Blueberry_tea.jpg", 
    origin: "Global", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Blueberry tea is a herbal tea made from dried blueberries and other complementary ingredients. It is known for its sweet, fruity flavor and deep purple color.", 
    colorDescription: "deep-purple", 
    tasteDescription: "The taste is sweet, fruity, and slightly tart with a smooth finish." 
  },
  { 
    name: "Lemon Balm Tea", 
    slug: "lemon-balm", 
    image: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Lemon_balm_tea.jpg", 
    origin: "Europe", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Lemon Balm Tea is made from the leaves of the lemon balm plant. It is known for its lemony flavor and calming properties.", 
    colorDescription: "pale-yellow", 
    tasteDescription: "The taste is lemony, slightly sweet, and mildly herbaceous with a smooth finish." 
  },
  { 
    name: "Yellow Tea", 
    slug: "yellow", 
    image: "https://upload.wikimedia.org/wikipedia/commons/2/21/Yellow_tea.jpg", 
    origin: "China", 
    style: "yellow", 
    caffeine: "20-50mg", 
    caffeineLevel: "low", 
    description: "Yellow tea is a rare and expensive type of tea with a slow oxidation process. It is known for its smooth, mellow flavor and yellow color.", 
    colorDescription: "pale-yellow", 
    tasteDescription: "The taste is smooth, mellow, and slightly sweet with a floral finish." 
  },
  { 
    name: "Nettle Tea", 
    slug: "nettle", 
    image: "https://upload.wikimedia.org/wikipedia/commons/1/12/Nettle_tea.jpg", 
    origin: "Europe and North America", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "N

ettle tea is made from the leaves of the stinging nettle plant. It is known for its earthy flavor and potential health benefits.", 
    colorDescription: "pale-green", 
    tasteDescription: "The taste is earthy, slightly grassy, and mildly sweet with a smooth finish." 
  },
  { 
    name: "Chrysanthemum Tea", 
    slug: "chrysanthemum", 
    image: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Chrysanthemum_tea.jpg", 
    origin: "China", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Chrysanthemum tea is made from the flowers of the chrysanthemum plant. It is known for its floral fragrance and light, sweet flavor.", 
    colorDescription: "pale-yellow", 
    tasteDescription: "The taste is light, floral, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Barley Tea", 
    slug: "barley", 
    image: "https://upload.wikimedia.org/wikipedia/commons/1/1d/Barley_tea.jpg", 
    origin: "East Asia", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Barley tea is a traditional East Asian herbal tea made from roasted barley. It is known for its toasty, nutty flavor and light brown color.", 
    colorDescription: "light-brown", 
    tasteDescription: "The taste is toasty, nutty, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Corn Silk Tea", 
    slug: "corn-silk", 
    image: "https://upload.wikimedia.org/wikipedia/commons/8/84/Corn_silk_tea.jpg", 
    origin: "Korea", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Corn Silk Tea is made from the dried silk of corn. It is known for its mild, slightly sweet flavor and potential health benefits.", 
    colorDescription: "pale-yellow", 
    tasteDescription: "The taste is mild, slightly sweet, and smooth with a light finish." 
  },
  { 
    name: "Rosehip Tea", 
    slug: "rosehip", 
    image: "https://upload.wikimedia.org/wikipedia/commons/e/e4/Rosehip_tea.jpg", 
    origin: "Global", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Rosehip tea is made from the dried fruit of the wild rose plant. It is known for its tart, fruity flavor and potential health benefits.", 
    colorDescription: "deep-red", 
    tasteDescription: "The taste is tart, fruity, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Sage Tea", 
    slug: "sage", 
    image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Sage_tea.jpg", 
    origin: "Mediterranean", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Sage tea is made from the leaves of the sage plant. It is known for its savory, slightly peppery flavor and potential health benefits.", 
    colorDescription: "pale-green", 
    tasteDescription: "The taste is savory, slightly peppery, and mildly sweet with a smooth finish." 
  },
  { 
    name: "Rooibos Chai", 
    slug: "rooibos-chai", 
    image: "https://upload.wikimedia.org/wikipedia/commons/6/66/Rooibos_chai.jpg", 
    origin: "Blend (primarily South Africa)", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Rooibos Chai is a blend of rooibos tea and spices such as cinnamon, ginger, and cloves. It is known for its warm, spicy flavor and caffeine-free content.", 
    colorDescription: "deep-red", 
    tasteDescription: "The taste is warm, spicy, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Green Rooibos", 
    slug: "green-rooibos", 
    image: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Green_rooibos.jpg", 
    origin: "South Africa", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Green Rooibos is an unoxidized version of rooibos tea, known for its light, grassy flavor and high antioxidant content.", 
    colorDescription: "pale-green", 
    tasteDescription: "The taste is light, grassy, and slightly sweet with a smooth finish." 
  },
  { 
    name: "Osmanthus Tea", 
    slug: "osmanthus", 
    image: "https://upload.wikimedia.org/wikipedia/commons/1/13/Osmanthus_heterophyllus1.jpg", 
    origin: "China", 
    style: "herbal", 
    caffeine: "caffeine-free", 
    caffeineLevel: "none", 
    description: "Osmanthus tea is made from the flowers of the osmanthus plant. It is known for its floral fragrance and light, sweet flavor.", 
    colorDescription: "pale-yellow", 
    tasteDescription: "The taste is light, floral, and slightly sweet with a smooth finish." 
  },
  { 
    name: "English Breakfast Decaf", 
    slug: "english-breakfast-decaf", 
    image: "https://upload.wikimedia.org/wikipedia/commons/3/38/English_breakfast_decaf.jpg", 
    origin: "Blend", 
    style: "black", 
    caffeine: "decaffeinated", 
    caffeineLevel: "none", 
    description: "English Breakfast Decaf is a decaffeinated version of the classic English Breakfast tea. It is known for its rich, robust flavor and dark color.", 
    colorDescription: "dark-brown", 
    tasteDescription: "The taste is rich, robust, and slightly malty with a smooth finish." 
  }
]

teas.each do |tea|
  Tea.find_or_create_by(tea)
end