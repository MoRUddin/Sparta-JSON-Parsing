# Sparta-JSON-Parsing

## Task
To create a class that will read and parse a JSON file, defining methods to make it testable.

## JSON structure
mockaroo >

first_name,
last_name,
favourite >

{country,
number,
animals}

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
