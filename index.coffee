module.exports = class
  rule:
    name: 'forbidden_regex'
    level: 'error'
    message: 'Line contains forbidden expression'
    regexList: []
    description: '''
      This rule forbids the usage of a specified expressions in source code that are identified by regular expressions.
      You can also fail linting when "console.log" is left accidentally in the code.
      '''

  lintLine: (line, api) ->
    {regexList} = api.config[@rule.name]

    for regex in regexList
      re = new RegExp(regex)
      if re.test(line)
        return context: "Regexp: #{regex}"
