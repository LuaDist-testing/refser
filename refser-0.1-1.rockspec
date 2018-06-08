-- This file was automatically generated for the LuaDist project.

package = "refser"
version = "0.1-1"
-- LuaDist source
source = {
  tag = "0.1-1",
  url = "git://github.com/LuaDist-testing/refser.git"
}
-- Original source
-- source = {
-- 	url = "git://github.com/lua4web/refser.git",
-- 	tag = "v0.1"
-- }
description = {
	summary = "Fast serialization of tables with references",
	detailed = [[refser allows to save primitive Lua types into strings and load them back. 
refser is similar to identity-preserving table serialization by Metalua, but it is much faster as it is written in C. 
]],
	homepage = "http://github.com/lua4web/refser",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1, < 5.3"
}
build = {
	type = "builtin",
	modules = {
		crefser = {
			sources = {
				"src/crefser.c",
				"src/fixbuf.c",
				"src/saver.c",
				"src/loader.c"
			},
			incdirs = {
				"src/"
			}
		},
		refser = "refser.lua"
	}
}
