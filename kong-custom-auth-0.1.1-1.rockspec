package = "kong-custom-auth"

version = "0.1.1-1"

-- The version '0.1.1' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

supported_platforms = {"linux", "macosx"}

source = {
  url = "https://github.com/avi-kalar/kong-custom-auth",
  tag = "0.1.1"
}

description = {
  summary = "A Kong plugin for enabling custom auth flow",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-custom-auth.access"] = "src/access.lua",
    ["kong.plugins.kong-custom-auth.handler"] = "src/handler.lua",
    ["kong.plugins.kong-custom-auth.schema"] = "src/schema.lua",
	["kong.plugins.kong-custom-auth.json"] = "src/json.lua"
  }
}
