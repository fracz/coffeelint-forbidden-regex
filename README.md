coffeelint-forbidden-regex
==============================
[![NPM Version](https://badge.fury.io/js/coffeelint-forbidden-regex.svg)](https://npmjs.org/package/coffeelint-forbidden-regex)

A CoffeeLint rule that searches for specified regular expressions in code and fails when it founds them.

Installation
-----------

    npm install coffeelint-forbidden-regex

Configuration
-----------

Add the following entry to your `coffeelint.json` file:

    "forbidden_regex": {
        "module": "coffeelint-forbidden-regex",
        "level": "error",
        "regexList": [
          "sampleForbiddenRegex1",
          "sampleForbiddenRegex2"
        ]
    }

Example
-----------

If you want to reject `alert('something')` or `alert 'something'` calls, add a forbidden regular expression for coffeelint:

    "forbidden_regex": {
        "module": "coffeelint-forbidden-regex",
        "level": "error",
        "regexList": [
          "\\balert[\\s\\(]"
        ]
    }

`\\b` is the [word boundary](http://www.regular-expressions.info/wordboundaries.html) in regexps.

Rejecting the `console.log` calls
-----------

Keep in mind that forbidding the `console` calls should be done with the `no_debugger` checker since CoffeeLint 1.10.0: 

```
"no_debugger": {
  "level": "error",
  "console": true
}
```

You should use the `coffeelint-forbidden-regex` for more sophisticated purposes.

Also, keep in mind that
-----------

it can slow down your linting process noticeably.
