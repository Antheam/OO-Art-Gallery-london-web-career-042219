require_relative '../config/environment.rb'

monet = Artist.new('claude money', 3)
warhol = Artist.new('andy warhol', 5)
okeef = Artist.new('georgia okeef', 10)

tate = Gallery.new('tate', 'london')
louvre = Gallery.new('louvre','paris')

p1 = Painting.new('lilly', 300, monet,louvre)
p2 = Painting.new('marilyn', 150, warhol, louvre)
p3 = Painting.new('flower', 450, okeef, tate)
p4 = Painting.new('pond', 800, monet, tate)





binding.pry

puts "Bob Ross rules."
