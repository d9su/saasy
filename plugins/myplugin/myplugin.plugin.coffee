module.exports = (BasePlugin) ->
  class myplugin extends BasePlugin
    name: "myplugin"

    serverExtend: (opts) ->
      # git = require "gift"
      # repo = git "../../" # Root directory of the docpad site
      # repo.status((err, status) ->
      #   console.log(status.files)
      # )

      gitpad = require "gitpad"

      gitpad.init()
      # gitpad.showHistory()
      # gitpad.showFileHistory('README.md', 2)
      gitpad.publishFiles(['README.md']);
      