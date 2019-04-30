class Artist

  attr_reader :name, :years_experience
@@all =[]
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
def self.all
  @@all
end

def paintings
  Painting.all.select{|painting|painting.artist == self}
end

def galleries
  paintings.map{|painting|painting.gallery}
end

def cities
paintings.map{|painting|painting.gallery.city}
end

def self.total_experience
 @@all.map{|artist|artist.years_experience}.sum
end

def painting_count
  paintings.length
end

def paint_per_year
(painting_count.to_f/self.years_experience)
end

 def self.most_prolific
  @@all.max_by{|artist|artist.paint_per_year}
 end

 def create_painting(title, price, gallery)
   Painting.new(title, price, gallery, self)
end


end
