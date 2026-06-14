-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "tokyonight",

	hl_override = {
		-- 1. Variables and Parameters
		["@variable.parameter"] = { italic = true },
		["@parameter"] = { italic = true },
		["@variable.builtin"] = { italic = true },
		["@variable.implicit"] = { italic = true },

		-- 2. Modern Structural Elements
		["@keyword.storage"] = { italic = true },
		["@storageclass"] = { italic = true },
		StorageClass = { italic = true },

		["@keyword.repeat"] = { italic = true },
		["@repeat"] = { italic = true },
		Repeat = { italic = true },

		["@keyword.conditional"] = { italic = true },
		["@conditional"] = { italic = true },
		Conditional = { italic = true },

		["@keyword.exception"] = { italic = true },
		["@exception"] = { italic = true },
		Exception = { italic = true },
        
        -- Language agnostic fallbacks (forces let, const, if, else)
        Keyword = { italic = true },
        Statement = { italic = true },

		-- 3. Metadata and Markup
		["@attribute"] = { italic = true },
		["@tag.attribute"] = { italic = true },
	},
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
