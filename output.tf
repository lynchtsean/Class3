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
output "reverse_sentence_1" {
  value = local.reverse_sentence_1
}

output "last_word_2" {
  value = local.last_word_2
}

output "underscore_4" {
  value = local.underscore_4
}

output "third_word_5" {
  value = local.third_word_5
}

output "cleaned_6" {
  value = local.cleaned_6
}

output "reversed_words_8" {
  value = local.reversed_words_8
}

output "replaced_11" {
  value = local.replaced_11
}
