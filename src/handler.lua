local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.kong-custom-auth.access"

local KongCustomAuthHandler = BasePlugin:extend()

KongCustomAuthHandler.PRIORITY = 899

function KongCustomAuthHandler:new()
  KongCustomAuthHandler.super.new(self, "kong-custom-auth")
end

function KongCustomAuthHandler:access(conf)
  KongCustomAuthHandler.super.access(self)
  access.execute(conf)
end

return KongCustomAuthHandler