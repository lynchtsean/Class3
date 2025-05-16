locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  env="non-prod"
  servicename2="abracadabra"
  lengthsa="11"
  winterlistOfSports = ["icehockey", "snowboarding", "iceskating"]
  total_output = ["150", "150", "150"]
  characters = ["luke", "yoda", "vader"]
  resturants = ["keela", "jackstrap", "mckibbons", "escondite", "belleprovince"]
  enemies_destroyed = [4252, 900, 20000056894]
  character_enemy_map = { for character in local.characters: # Convert character listr to a set
  character => local.enemies_destroyed
  }
  top5_food = ["burger","pizza","hotdog","poutine","calamari"]
  resturant_food_map = { for resturant in local.resturants: # Convert resturants listr to a set
  resturant => local.top5_food
  }
  string_numbers = ["42", "77", "13", "98", "3", "64", "55", "27", "89", "6"]
  # Convert strings to numbers and sum
  number_sum = sum([for n in local.string_numbers : tonumber(n)])
  original_text = "I AM A STUDENT AT MCIT"
  lower_text    = lower(local.original_text)
  }
