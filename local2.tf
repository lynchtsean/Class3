locals {
  # Example transformed results (replace these with your computed values)
  reverse_sentence_1  = join("", reverse(split("", "Montreal bagels taste better at 3am.")))
  last_word_2         = element(split(" ", "Poutine should be a food group."), length(split(" ", "Poutine should be a food group.")) - 1)
  vowel_count_3       = 15
  underscored_4       = replace("Why does St-Laurent never sleep?", " ", "_")
  third_word_5        = element(split(" ", "Bagels in Montreal are boiled, not baked."), 2)
  cleaned_6           = replace(replace(replace(replace(replace("Is this the best food city in Canada?", "?", ""), ".", ""), ",", ""), "'", ""), "-", "")
  even_chars_7        = "Mnra' odsee lt!"
  reversed_words_8    = join(" ", reverse(split(" ", "Late-night diners are a blessing.")))
  sentence_9_cap      = "Every Foodie Should Visit Once."
  sentence_10_title   = "Tastes of Montreal at Every Corner"
  replaced_11         = replace("I eat poutine three times a week.", "poutine", "salad")

  # Combine all into one output string
  all_in_one_line = join(" | ", [
    "1: ${local.reverse_sentence_1}",
    "2: ${local.last_word_2}",
    "3: Vowels: ${local.vowel_count_3}",
    "4: ${local.underscored_4}",
    "5: ${local.third_word_5}",
    "6: ${local.cleaned_6}",
    "7: ${local.even_chars_7}",
    "8: ${local.reversed_words_8}",
    "9: ${local.sentence_9_cap}",
    "10: ${local.sentence_10_title}",
    "11: ${local.replaced_11}"
  ])
}
