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

If you want to reject `console.log` or `console.err` calls, add it as forbidden regular expression for coffeelint:

    "forbidden_regex": {
        "module": "coffeelint-forbidden-regex",
        "level": "error",
        "regexList": [
          "console\\.(log|err)"
        ]
    }
