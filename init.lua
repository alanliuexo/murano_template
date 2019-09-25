---
-- Bring this solution up to where we expect

-- require('migrations/1_Welcome')
-- require('migrations/2_SetupAssetsSchema')
-- require('migrations/3_SetupNotifierSchema')
-- require('migrations/4_StartupTimeouts')
-- require('migrations/5_StatusifyOldRules')

-- Remember to add new migrations here.

-- local MGR = require('migrator')
-- MGR.up()

local param = Config.setParameters({service='webservice'})
-- local param = {
--     service='webservice',
--     parameters={
--         headers={}
--     }
-- }
param.parameters.headers["content-security-policy"] = "frame-ancestors 'self'; img-src data: blob: *; media-src data: blob: *; default-src 'unsafe-eval' 'unsafe-inline' 'self' data: blob: ws: wss: *.exosite.io *.auth0.com sentry.io fonts.googleapis.com cdn.jsdelivr.net cdn.mxpnl.com api.mixpanel.com fonts.gstatic.com *.amazonaws.com *.youtube.com youtu.be *.ytimg.com *.test4.com"
Config.setParameters(param)