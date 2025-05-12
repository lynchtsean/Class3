locals {
  quote = "Montreal: Where potholes have their own zip code."

  # 1. Convert to Uppercase
  upper_quote = upper(local.quote)

  # 2. Convert to Lowercase
  lower_quote = lower(local.quote)

  # 3. Get First 10 Characters
  short_quote = substr(local.quote, 0, 10)

  # 4. Reverse the String
  reversed = join("", reverse(split("", local.quote)))

  # 5. Replace "potholes" with "hotdogs"
  replaced = replace(local.quote, "potholes", "hotdogs")

  # 6. Check if it Contains "zip"
  # Note: Terraform doesn't support `regex` inside `contains()` in locals, so use `contains` instead
  has_zip = contain(local.quote, "zip")

  # 7. Join with a List of Other City Quotes
  other_quotes = ["Toronto: City of condos.", "Vancouver: Rain and real estate."]
  joined_quotes = join(" | ", concat(local.other_quotes, [local.quote]))

  # 8. Split the Quote by Spaces
  words = split(" ", local.quote)

  # 9. Length of the Quote
  quote_length = length(local.quote)

  # 10. Add a Suffix to the Quote
  branded_quote = "${local.quote} #TrueStory"
}
