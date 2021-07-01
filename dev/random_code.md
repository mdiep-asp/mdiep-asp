```
private val northAmericanPhoneNumberRegex = "^\\(?([0-9]{3})\\)?[-.\\s]?([0-9]{3})[-.\\s]?([0-9]{4})$".toRegex()
fun String.toNorthAmericanPhoneNumberFormat(): String {
  if (northAmericanPhoneNumberRegex.matches(this)) {
    return northAmericanPhoneNumberRegex.replaceFirst(this, "($1) $2-$3")
  }
  throw IllegalArgumentException("The argument is not a phone number!")
}

```
