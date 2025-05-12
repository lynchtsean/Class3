locals {
  # Original sentences
  sentence_1  = "Montreal bagels taste better at 3am."
  sentence_2  = "Poutine should be a food group."
  sentence_3  = "Smoked meat is not a sandwich. It's a religion."
  sentence_4  = "Why does St-Laurent never sleep?"
  sentence_5  = "Bagels in Montreal are boiled, not baked."
  sentence_6  = "Is this the best food city in Canada?"
  sentence_7  = "Montreal's food scene is elite!"
  sentence_8  = "Late-night diners are a blessing."
  sentence_9  = "every foodie should visit once."
  sentence_10 = "tastes of montreal at every corner"
  sentence_11 = "I eat poutine three times a week."

  # 1. Reverse the entire sentence (character-by-character)
  reverse_sentence_1 = join("", reverse(split("", local.sentence_1)))

  # 2. Extract the last word
  last_word_2 = element(split(" ", local.sentence_2), length(split(" ", local.sentence_2)) - 1)

  # 4. Replace all spaces with underscores
  underscored_4 = replace(local.sentence_4, " ", "_")

  # 5. Get the 3rd word (index 2)
  third_word_5 = element(split(" ", local.sentence_5), 2)

  # 6. Remove punctuation (basic method)
  cleaned_6 = replace(
    replace(
      replace(
        replace(
          replace(local.sentence_6, "?", ""),
        ".", ""),
      ",", ""),
    "'", ""),
  "-", "")

  # 8. Reverse sentence word-by-word
  reversed_words_8 = join(" ", reverse(split(" ", local.sentence_8)))

  # 9. Manual capitalization
  sentence_9_capitalized = "Every Foodie Should Visit Once."

  # 10. Title case with exceptions
  sentence_10_title_case = "Tastes of Montreal at Every Corner"

  # 11. Replace "poutine" with "salad"
  replaced_11 = replace(local.sentence_11, "poutine", "salad")
}
