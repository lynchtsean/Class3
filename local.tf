locals{
  servicename="abracadabra"
  forum="abracadabramcit"
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
  resturant => local.food
  }
}
