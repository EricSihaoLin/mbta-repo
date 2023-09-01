local cmds = require('commands')
local getopt = require('getopt')
local bin = require('bin')
local utils = require('utils')
local format=string.format
local floor=math.floor
local os = require("os")

local function main(args)
  print( string.rep('--',30) )
  print( string.rep('--',30) )

  -- core.console will go async when waiting for the proxmark to return
  -- so need to wait for a response (sleep)
  core.console('hf mf dump --key hf-mf-mbta-key.bin')
  os.execute("sleep 30")

  print( string.rep('--',30) )

end
main(args)