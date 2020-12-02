User.destroy_all
u1 = User.create :username => 'Cull', :email => 'hugo.cullinan@hotmail.com', :password => 'chicken'
u2 = User.create :username => 'Chump', :email => 'chump@ga.co', :password => 'chicken'
puts "#{ User.count } users created."

Recipe.destroy_all
r1 = Recipe.create :dish => 'Toast', :image => 'https://www.simplyrecipes.com/wp-content/uploads/2010/01/cinnamon-toast-horiz-a-1800.jpg', :serves => 1, :time => 5, :ingredients => ['bread', 'spread', 'butter'], :method => ['put bread in toaster', 'spread butter on toasted bread', 'spread your preferred spread on buttered toast']
r2 = Recipe.create :dish => 'Bacon and egg roll', :image => "https://d3lp4xedbqa8a5.cloudfront.net/s3/digital-cougar-assets/food/2015/03/18/40dc1f506d414c2a99e11de113fa05c3/bacon-and-egg-roll-with-herb-a-oli.jpg?width=768&height=639&mode=crop&quality=75&anchor=middlecenter", :serves  => 1, :time => 10, :ingredients => ['bun', 'sauce', 'spinach', 'egg', 'bacon'], :method => ['fry egg and bacon', 'toast bun while frying', 'add sauce to toasted bun', 'add spinach to top bun', 'add fried egg and bacon to bottom bun']
r3 = Recipe.create :dish => 'Weet-bix', :image => 'https://img.kidspot.com.au/I_04-8Jt/w643-h428-cfill-q90/kk/2018/10/weet-bix-banana-and-honey-recipe-506844-1.jpg', :serves => 1, :time => 2, :ingredients => ['weet-bix', 'milk', 'banana', 'honey'], :method => ['add preferred portion of weet-bix to bowl', 'drizzle honey', 'add sliced banana', 'add milk']
puts "#{ Recipe.count } recipes created."

Cookbook.destroy_all
c1 = Cookbook.create :title => 'mybreakfast'
c2 = Cookbook.create :title => 'bananarama'
puts "#{ Cookbook.count } cookbooks created."

puts "User and recipes"
u1.recipes << r1 << r2
u2.recipes << r3

puts "Cookbooks and recipes"
c1.recipes << r1 << r2 << r3
c2.recipes << r3

puts "Recipes and cookbooks"
r1.cookbooks << c1 << c2
r2.cookbooks << c1
r3.cookbooks << c1 << c2

puts "User and cookbooks"
u1.cookbooks << c1
