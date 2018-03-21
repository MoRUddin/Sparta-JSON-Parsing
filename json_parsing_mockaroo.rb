require "json"

class Mockaroo
  attr_reader :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def first_name
    json_file["mockaroo"].first["first_name"]
  end

  def first_names(x)
    names = []
    json_file["mockaroo"].each do |k|
      names << k["first_name"]
    end
    return names if (x == "all")
    names.first(x)
  end

  def last_name
    json_file["mockaroo"].first["last_name"]
  end

  def last_names(x)
    names = []
    json_file["mockaroo"].each do |k|
      names << k["last_name"]
    end
    return names if (x == "all")
    names.first(x)
  end

  def favourite
    favourites = []
    json_file["mockaroo"].each do |k|
      favourites << k["favourite"]
    end
    favourites
  end

  def fav_num(x)
    nums = []
    favourite.each do |k|
      nums << k["number"]
    end
    nums[x-1]
  end

  def fav_country(x)
    country = []
    favourite.each do |k|
      country << k["country"]
    end
    country[x-1]
  end

  def fav_animals(x)
    animals = []
    favourite.each do |k|
      animals << k["animals"]
    end
    animals[x-1]
  end

end
