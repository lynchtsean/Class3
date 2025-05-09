output "print"{
  value = local.servicename
}
output "secondprint"{
  value = local.forum
}
output "lengthsa"{
  value = local.lengthsa
}
output "wintersportslist"{
  value = local.winterlistOfSports # "snowboarding","icehockey","iceskating"
}
output "resturants"{
  value = local.resturants # "keela","jackstrap","mckibbons","escondite","belleprovince"
}
output "total_sum"{
  value = sum([for total in local.total_output : tonumber(total)])
}
output "total_output"{
  value = local.total_output
}
output "character_enemy_output"{
  value = local.character_enemy_map
}
output "resturant_to_food_map"{
  value = local.resturant_food_map
}
output "sum_of_numbers"{
  value = sum([for n in var.string_numbers : tonumber(n)])
}
output "uppercased_sentence"{
  value = upper(var.sentence)
}
output "sum_of_numbers" {
  value = local.number_sum
}
