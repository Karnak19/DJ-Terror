require("dotenv").config();

module.exports = {
  app: {
    token: process.env.TOKEN,
    playing: process.env.ACTIVITY,
    global: true,
    guild: "xxx",
    ExtraMessages: false,
    loopMessage: false,
  },

  opt: {
    DJ: {
      enabled: false,
      roleName: "",
      commands: [],
    },
    maxVol: 100,
    spotifyBridge: true,
    volume: 75,
    leaveOnEmpty: true,
    leaveOnEmptyCooldown: 30000,
    leaveOnEnd: true,
    leaveOnEndCooldown: 30000,
    discordPlayer: {
      ytdlOptions: {
        quality: "highestaudio",
        highWaterMark: 1 << 25,
      },
    },
  },
};
