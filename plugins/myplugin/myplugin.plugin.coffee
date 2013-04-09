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
      gitpad.hello();
      gitpad.initRepo();
      gitpad.showStatus();