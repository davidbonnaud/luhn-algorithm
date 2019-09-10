# luhn-algorithm
The Luhn algorithm is a method that credit cards and other identification numbers can use to distinguish valid numbers from invalid ones. It is meant to prevent users from making accidental errors.

By running a quick mathematical formula on the numbers of a card, you can quickly determine whether or not it passes the Luhn algorithm.

The number 4194560385008504 is an example of a credit card that passes the Luhn algorithm (although it's not actually an issued card).

The number 4194560385008505 is an example of a credit card that fails the Luhn algorithm.

How the Algorithm Works
Step 1 - break the credit card into its individual digits.
Step 2 - Start from the right, double every second digit (i.e., digit 2, 4, 6 etc.).
Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
Step 4 - Sum the digits.
Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.
