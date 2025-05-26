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
output "list_of_numbers" {
  value = local.number_sum
}
output "lowercased_sentence" {
  value = local.lower_text
}
output "extract_canada" {
  value = substr(var.full_text, 26, 6)
}
output "string_manipulations" {
  value = {
    upper          = local.upper_quote
    lower          = local.lower_quote
    first_10_chars = local.short_quote
    reversed       = local.reversed
    replaced       = local.replaced
    contains_zip   = local.has_zip
    joined         = local.joined_quotes
    split_words    = local.words
    length         = local.quote_length
    with_suffix    = local.branded_quote
  }
}
output "all_sentence_tasks" {
  value = local.all_in_one_line
}
output "nested_list_output" {
  value = local.nested_list
}
output "flat_list_output" {
  value = local.flat_list
}
output "uppercase_names" {
  value = [for name in local.names : upper(name)]
}
output "vms_mapping" {
  value = local.vms_map
}
output "combined_map" {
  value = local.combined_map
}
output "justus_regions" {
  value = local.us_regions
}
