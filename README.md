# Sparta-JSON-Parsing

## Task
To create a class that will read and parse a JSON file, defining methods to make it testable.

## JSON structure
L mockaroo
  L first_name
  L last_name
  L favourite
    L country
    L number
    L animals

## Example method
The first method
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
