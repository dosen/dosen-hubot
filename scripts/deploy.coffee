module.exports = (robot) ->
  robot.respond /ship it/i, (msg) ->
    github = require("githubot")(robot)
    github.branches("dosen").merge "master", into: "prod", (commit) ->
      msg.send commit.message
