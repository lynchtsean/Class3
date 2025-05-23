locals {
  nested_list = [
    ["apple", "banana"],
    ["orange", "grape"],
    ["kiwi"]
  ]
  flat_list = flatten(local.nested_list)
}
