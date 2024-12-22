# ISBN Validator

## Exercise Overview

It's the kind of thing you vaguely notice, but don't really pay attention to. _You_ know what I'm talking about.

I'm talking about those [ISBN](https://en.wikipedia.org/wiki/International_Standard_Book_Number) numbers on all published books. While you thought that you can get through life without having to think about ISBN numbers, the day of reckoning has arrived.

ISBN numbers have evolved over time, and have had different formats. One longstanding format is the ISBN-10 format, where the ISBN number has ten "digits". Here's an example of an ISBN-10 number:

```
1680507222
```

Pretty nifty, right? Every published book has a number like this - and each book's number is unique. If you Google an ISBN number, you should get the corresponding book in your search results.

Now, here's where things get interesting. Believe it or not, ISBN numbers _are not completely random_. In fact, ISBN numbers must conform to a certain pattern, and if they don't, they are invalid. Thus, not every combination of ten digits can become an ISBN number.

In this exercise, you'll be writing software that checks a proposed ISBN-10 number to make sure it conforms to the ISBN standards. The details of the ISBN standards are described below.

## Exercise Details

You'll be completing the code for the `isbn_verify?` method inside the file called `isbn.rb`.

The method will accept a _string_ and return a _boolean_ (either `true` or `false`) as to whether the string represents a valid ISBN-10 number.

It's important to reiterate that the method will be accepting a string, rather than a number. One reason for this is that certain ISBN-10 numbers may actually contain the letter "X", as we'll describe shortly.

### The ISBN-10 Pattern

For an ISBN-10 number to be valid, we first need to compute the following formula. Note that we plug in each digit from the ISBN number like so:

```
(1st digit * 10) +
(2nd digit * 9) +
(3rd digit * 8) +
(4th digit * 7) +
(5th digit * 6) +
(6th digit * 5) +
(7th digit * 4) +
(8th digit * 3) +
(9th digit * 2) +
(10th digit)
```

We then take this sum and check whether it's evenly divisible by _11_. If it's divisible by 11, the ISBN number is valid. Otherwise, it's not.

> Yes, this is actually how ISBN-10 numbers work! We're not making this up.

Here's an example. Let's take our sample ISBN number from above, `1680507222`, and plug it into the formula:

```
(1 * 10) +
(6 * 9) +
(8 * 8) +
(0 * 7) +
(5 * 6) +
(0 * 5) +
(7 * 4) +
(2 * 3) +
(2 * 2) +
(2)
```

This sum adds up to: `198`

Since `198` is evenly divisible by `11` (because `18 * 11 = 198`), we can verify that `1680507222` is a valid ISBN-10 number.

Accordingly, if we called the method `isbn_verify?("1680507222")`, the method should return `true` since the ISBN number is valid.

If, however, the computed sum is not evenly divisble by 11, the `isbn_verify?` method should return `false`.

### Mr. X

To throw in a cute little monkey wrench, _some_ ISBN-10 numbers end with the letter `X` instead of a numerical digit. In this case, the `X` represents the number `10`.

For example, the ISBN number `359821507X` is valid. Let's plug it into our formula, with the `X` representing the number `10`:

```
(3 * 10) +
(5 * 9) +
(9 * 8) +
(8 * 7) +
(2 * 6) +
(1 * 5) +
(5 * 4) +
(0 * 3) +
(7 * 2) +
(10)      <-- this is the X!
```

This gives us the sum `264` which is divisible by `11` (as `24 * 11 = 264`).

However, this is the _only_ situation where a letter may appear in an ISBN number. It may only be the letter `X`, and it can only appear as the _final_ "digit" in the number. If an ISBN number contains any other letter, or even an `X` in some position other than the end, the ISBN number is automatically _invalid_.

### Other Rules

There are a few other rules worth pointing out:

- An ISBN-10 is only valid if it contains exactly 10 digits; no less, and no more.
- Some ISBN-10 numbers may appear with dashes in the middle, such as `3-598-21508-8`. For the purposes of this exercise, we're not going to pay attention to the dashes at all. That is, it's okay if they're in there, but we'll ignore them when performing our validation. The dashes will neither help validate nor invalidate the number.
- Any character that isn't a number or a dash will invalidate the ISBN number, with the exception of an `X` at the very end.

## A Note About Decomposition

This exercise is difficult (as are _all_ deep dives!) - and decomposition will be key in solving it.

When solving any difficult programming problem, it's usually a mistake to just start cranking out code. You want to form some sort of game plan.

As part of this game plan, it's advisable to _decompose_ the exercise into smaller programming tasks. Specifically, begin by identifying smaller programming exercises that you think will ultimately be part of the complete situation.

For this particular exercise, here are some potential "smaller" programming tasks to consider:

- Print out each digit of the input string, one at a time.
- Count the number of digits in the input string.
- Check whether each digit of the input string is a number.
- Compute the sum of `10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1` using a loop.

Take some time to fill in more items to this list:

-
-
-
-

Then, begin writing code for these smaller tasks. Once you've been able to accomplish this, you can try to put everything together to complete the full exercise.

## Unit Tests

This exercise comes with unit tests, found in the `test_isbn.rb` file. You can run the tests with:

```
ruby test_isbn.rb
```

Note that by default, most of the tests are commented out. You need to uncomment each test to activate it.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
