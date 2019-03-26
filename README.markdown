# yubin

<img src="https://lh3.googleusercontent.com/7R86AWGBu4t5mbtw1heKahOQ8p82_CvjrDYfhejwtl8LqzCAROM5xWptgyvmj45Skgh3bGpgKvV6Q4_jBGI" width="100px">

[Survival Common Lisp](https://techbookfest.org/event/tbf06/circle/38170002)

This is an example of making a Common Lisp project using [cl-project](https://github.com/fukamachi/cl-project).

### About this app

Postal code is called "Yubin Bangou" in Japanese.  The app "Yubin" searches the name of a place by `yubin` command.

### Installation

You can install yubin using Roswell.

```
$ ros install clfreaks/yubin
```

### Usage

`yubin <postalcode>` will return the place name of the postal code.

```
$ yubin 6380321
奈良県吉野郡天川村坪内
```

## Building a Docker image

```
# For building a Docker image
$ docker build . -t yubin
# Running the web server at localhost:5000
$ docker run -t -i -p 5000:5000 yubin
```

### Author

t-cool

### Licence

MIT
