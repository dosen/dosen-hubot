module.exports = (robot) ->
  robot.respond /ship it (.*)/i, (msg) ->
    github = require("githubot")(robot)
    base =  msg.match[1]
    github.branches("dosen").merge base, into: "prod", (commit) ->
      msg.send commit.message
