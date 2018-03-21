# Sparta-JSON-Parsing

## Task
To create a class that will read and parse a JSON file, defining methods to make it testable.

## JSON structure


## Example method
The first method stores all data in favourites and its subsidiaries, the second uses this to find the favourite number of a specific person. This could instead be returned as an array if all favourite numbers should be tested.
```ruby
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
```

## Requirements
* Ruby (built in 5.1.5)
* rspec

## How to run tests
* `git clone` the HTML link from [here](https://github.com/MoRUddin/Sparta-JSON-Parsing) to download the project to your local environment
* run `gem install rspec` if rspec is not already installed
* run `rspec` on the project folder to run the tests
