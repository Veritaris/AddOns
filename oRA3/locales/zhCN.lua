
if GetLocale() ~= "zhCN" then return end
local _, tbl = ...
local L = tbl.locale

L["add"] = "添加"
-- L["align"] = "Alignment"
-- L["allSpells"] = "All selected spells"
L["average"] = "平均"
-- L["backgroundColor"] = "Background color"
-- L["barDisplay"] = "Bars"
-- L["barDisplayDesc"] = "Simple bar display."
L["barSettings"] = "计时条设置"
-- L["battleResAlwaysShow"] = "Always show"
-- L["battleResAlwaysShowDesc"] = "Show the display even when no class in the group can use a battle res."
-- L["battleResHeader"] = "The monitor will only be shown while you are in a group in a raid instance."
-- L["battleResLockDesc"] = "Toggle locking the monitor. This will hide the header text, background, and prevent movement."
-- L["battleResShowDesc"] = "Toggle showing or hiding the monitor."
-- L["battleResTitle"] = "Battle Res Monitor"
L["blizzMainTank"] = "内建主坦克"
L["broken"] = "损坏"
-- L["buffs"] = "Buffs"
L["byGuildRank"] = "会阶"
L["center"] = "中间"
-- L["checkBuffs"] = "Check Buffs"
-- L["checkBuffsDesc"] = "Include raid buffs when checking buffs."
-- L["checkFlaskDesc"] = "Include flasks when checking buffs."
-- L["checkFoodDesc"] = "Include food buffs when checking buffs."
-- L["checkReadyCheck"] = "Check on ready check"
-- L["checkReadyCheckDesc"] = "Check buffs when a ready check is performed when promoted in a non-LFG instance group."
-- L["checkRuneDesc"] = "Include augment runes when checking buffs."
L["checks"] = "检查"
-- L["classColorBorder"] = "Class color borders"
-- L["clear"] = "Clear"
-- L["consumables"] = "Consumable Check"
L["cooldowns"] = "冷却"
-- L["cooldownsEnableDesc"] = "Disabling the module will prevent it from using any resources to track cooldowns while in a group."
-- L["copyDisplay"] = "|cff02ff02Copy %s|r"
-- L["createNewDisplay"] = "|cff02ff02Create new display|r"
-- L["customColor"] = "Custom color"
-- L["dead"] = "dead"
L["deleteButtonHelp"] = "从坦克名单移除。"
-- L["deleteDisplay"] = "|cffff0202Delete %s|r"
L["demoteEveryone"] = "降级所有人"
L["demoteEveryoneDesc"] = "降级在目前群组的所有人"
-- L["direction"] = "Direction"
-- L["directionThen"] = "%s then %s"
-- L["disabledAlpha"] = "Disabled bar alpha"
L["disbandGroup"] = "解散团队"
L["disbandGroupDesc"] = "解散当前的小队或团队, 会将所有人踢出队伍, 直到只省下你一个人. 由于潜在的危险, 你会看到一个确认框. 按住CTRL跳过确认."
L["disbandGroupWarning"] = "你确认要解散团队么?"
L["disbandingGroupChatMsg"] = "正在解散团队"
-- L["displayTypes"] = "Display types"
-- L["down"] = "Down"
L["durability"] = "耐久度"
L["duration"] = "时间"
-- L["durationTextSettings"] = "Duration text settings"
-- L["fill"] = "Fill bar"
-- L["filtersDesc"] = "Set what you want to exclude from showing."
-- L["flask"] = "Flask"
-- L["flaskExpires"] = "Your flask is expiring in less than 10 minutes"
-- L["font"] = "Font"
-- L["fontSize"] = "Font Size"
-- L["food"] = "Food"
-- L["gap"] = "Bar gap"
-- L["gear"] = "Gear"
-- L["group"] = "Group"
-- L["groupSpells"] = "Keep spells sorted by class"
L["growUpwards"] = "向上递增"
L["guildKeyword"] = "工会关键字"
L["guildKeywordDesc"] = "任何工会成员密语这个关键字会被邀请至你的队伍"
L["guildRankInvites"] = "会阶邀请"
L["guildRankInvitesDesc"] = "自动邀请会阶高于等于所选等级的工会成员，按下该按钮会自动在工会和官员频道发送要求10秒内离队待组的消息，10秒后自动开始组人" -- Needs review
L["height"] = "高度"
-- L["hideDead"] = "Hide dead"
-- L["hideGroupDesc"] = "Hide cooldowns from players in this group."
-- L["hideInCombat"] = "Hide in combat"
-- L["hideInCombatDesc"] = "Automatically hide the ready check window when you get in combat."
-- L["hideInGroupDesc"] = "Hide cooldowns in this type of group."
-- L["hideInInstanceDesc"] = "Hide cooldowns in this type of instance."
-- L["hideOffline"] = "Hide disconnected"
-- L["hideOutOfCombat"] = "Hide out of combat"
-- L["hideOutOfRange"] = "Hide out of range"
-- L["hideReadyPlayers"] = "Hide players who are ready"
-- L["hideReadyPlayersDesc"] = "Hide players that are marked as ready from the window."
-- L["hideRolesDesc"] = "Hide cooldowns from players in this role."
-- L["hideWhenDone"] = "Hide window when done"
-- L["hideWhenDoneDesc"] = "Automatically hide the window when the ready check is finished."
-- L["home"] = "Home"
L["icon"] = "图标"
-- L["iconDisplay"] = "Icons"
-- L["iconDisplayDesc"] = "Simple icon display."
-- L["iconGroupDisplay"] = "Icon Groups"
-- L["iconGroupDisplayDesc"] = "Show all available casts for a spell merged into one icon."
L["individualPromotions"] = "单独提升"
L["individualPromotionsDesc"] = "注意，玩家名字区分大小写。添加自动提升玩家只需敲入名字后按回车或者旁边的按钮。在下拉列表中选中一个玩家就可以删除该玩家的自动提升。"
L["invite"] = "邀请"
L["inviteDesc"] = "当有人密语以下关键字后, 他将会被自动邀请加入你的队伍. 如果你不在一个小队或队伍已达到上限, 插件将自动转换为团队. 团队满40人后此功能会失效. 留空为禁止"
L["inviteGuild"] = "公会邀请"
L["inviteGuildDesc"] = "邀请公会中满级的玩家"
L["inviteGuildRankDesc"] = "邀请公会中所有会阶在%s以上的玩家" -- Needs review
-- L["inviteInRaidOnly"] = "Only invite on keyword if in a raid group"
--L.inviteGroupIsFull = "The group is currently full."
L["invitePrintMaxLevel"] = "公告：公会中所有满级玩家会被在10秒内被邀请，请保持没有队伍！"
L["invitePrintRank"] = "公告：公会中所有会阶在%s以上的玩家会被在10秒内被邀请，请保持没有队伍！"
-- L["invitePrintRankOnly"] = "All characters of rank %s will be invited to raid in 10 seconds. Please leave your groups."
L["invitePrintZone"] = "公告：公会中所有在%s的玩家会被在10秒内被邀请，请保持没有队伍！"
L["inviteZone"] = "地区邀请"
L["inviteZoneDesc"] = "邀请公会中在指定地区的玩家"
-- L["itemLevel"] = "Item Level"
L["keyword"] = "组队关键字"
L["keywordDesc"] = "任何人密语你这个关键字会被邀请至你的队伍"
-- L["keywordMultiDesc"] = "You can use multiple keywords by separating them with a ; (semicolon)."
-- L["labelTextSettings"] = "Label text settings"
-- L["latency"] = "Latency"
L["left"] = "左"
L["lockMonitor"] = "锁定"
L["lockMonitorDesc"] = "锁定后将隐藏监视器的标题并将无法拖曳, 设置大小, 打开设置."
-- L["logDisplay"] = "Log"
-- L["logDisplayDesc"] = "A simple frame where messages are sent when a spell is used."
L["massPromotion"] = "批量提升"
L["minimum"] = "最少"
-- L["missingBuffs"] = "Missing Buffs"
-- L["missingEnchants"] = "Missing Enchants"
-- L["missingGems"] = "Missing Gems"
L["moveTankUp"] = "点击往上移动坦克。"
-- L["name"] = "Name"
L["neverShowOwnSpells"] = "不显示我的法术"
L["neverShowOwnSpellsDesc"] = "冷却显示器将不显示你的法术冷却. 例如你用冷却监视插件时可以勾选本项."
-- L["noFlask"] = "No Flask"
-- L["noFood"] = "Not Well Fed"
L["noResponse"] = "未确认"
-- L["noRune"] = "No Augment Rune"
-- L["noSpells"] = "No spells selected!"
-- L["notBestBuff"] = "Not the highest stat consumable available"
-- L["notInRaid"] = "You are not in a raid instance."
L["notReady"] = "未准备好"
L["offline"] = "离线"
L["onlyMyOwnSpells"] = "只显示我的法术冷却"
L["onlyMyOwnSpellsDesc"] = "是否只显示你自己释放的法术的冷却, 这将是一个普通的法术冷却插件."
L["options"] = "选项"
-- L["outline"] = "Outline"
-- L["outOfRange"] = "Player out of range"
-- L["output"] = "Output"
-- L["outputDesc"] = "Display results in group chat, otherwise results are printed to your default chat frame."
-- L["outputMissing"] = "Output Missing"
-- L["playersNotReady"] = "The following players are Not Ready: %s"
-- L["playerStatus"] = "Player status"
-- L["popupConvertDisplay"] = "Changing the display type will reset the display specific settings!"
-- L["popupDeleteDisplay"] = "Delete display '%s'?"
--[==[ L["popupNameError"] = [=[There is already a display named '%s'.
Please choose another name.]=] ]==]
-- L["popupNewDisplay"] = "Enter the name for the new display"
-- L["printToRaid"] = "Relay ready check results to raid chat"
-- L["printToRaidDesc"] = "If you are promoted, relay the results of ready checks to the raid chat, allowing raid members to see what the holdup is. Please make sure yourself that only one person has this enabled."
-- L["profile"] = "Profile"
L["promote"] = "提升"
L["promoteEveryone"] = "所有人"
L["promoteEveryoneDesc"] = "自动提升所有人"
L["promoteGuild"] = "公会"
L["promoteGuildDesc"] = "自动提升团队中的工会玩家"
-- L["raidBuffs"] = "Raid Buffs"
-- L["raidCheck"] = "Raid Check"
-- L["range"] = "range"
L["ready"] = "准备好"
-- L["readyByGroup"] = "Relay ready check results based on raid difficulty"
-- L["readyByGroupDesc"] = "Ignore players that are in groups outside of the max player size for the instance difficulty, for example, ignore players in groups 5-8 in Mythic mode raids. The ready check will finish when all of the players in relevant groups are ready."
L["readyCheckSeconds"] = "就位确认还有%d秒结束"
-- L["readyCheckSound"] = "Play the ready check sound using the Master sound channel when a ready check is performed. This will play the sound while \"Sound Effects\" is disabled and at a higher volume."
L["remove"] = "删除"
-- L["reportAlways"] = "Report always"
-- L["reportIfYou"] = "Report if started by you"
L["right"] = "右"
L["rightClick"] = "右键打开设置"
L["rune"] = "符文"
L["save"] = "储存"
L["saveButtonHelp"] = "储存坦克在你个人名单。只要你在团队里面有这玩家，他就会被编排作为个人坦克。"
L["scale"] = "缩放"
L["selectClass"] = "选择职业"
L["selectClassDesc"] = "通过下拉列表选择你想要监视的技能冷却。每个职业都有一套可用的监视的技能冷却列表，根据需要取舍。"
-- L["self"] = "Self"
L["shortSpellName"] = "技能缩写"
L["show"] = "显示"
-- L["showBuffs"] = "Show buffs"
--[==[ L["showBuffsDesc"] = [=[Show icons for food, flask, and rune buffs for each player and text below the ready check frame for missing raid buffs.

|cffffff33Show missing buffs|r will only show icons if the player is missing buffs.

|cffffff33Show current buffs|r will only show icons for buffs a player has.]=] ]==]
L["showButtonHelp"] = "在你个人的坦克排列中显示这个坦克. 此项只对本地有效, 不会影响团队中其他人的配置"
-- L["showCooldownText"] = "Show cooldown text"
-- L["showCooldownTextDesc"] = "Show the Blizzard cooldown text"
-- L["showCurrentBuffs"] = "Show current buffs"
-- L["showHelpTexts"] = "Show interface help"
-- L["showHelpTextsDesc"] = "The oRA3 interface is full of helpful texts intended to better describe what is going on and what the different interface elements actually do. Disabling this option will remove them, limiting the clutter on each pane. |cffff4411Requires a interface reload on some panes.|r"
-- L["showMissingBuffs"] = "Show missing buffs"
-- L["showMissingMaxStat"] = "Show lesser consumables as missing"
-- L["showMissingMaxStatDesc"] = "Show icons for food and flask buffs with a different color to indicate it is not the highest stat value available."
-- L["showMissingRunes"] = "Show Augment Runes"
-- L["showMissingRunesDesc"] = "Include showing an icon for Augment Rune buffs."
L["showMonitor"] = "显示"
L["showMonitorDesc"] = "是否显示冷却监视器"
-- L["showOffCooldown"] = "Show spells off cooldown"
-- L["showRoleIcons"] = "Show role icons on raid pane"
-- L["showRoleIconsDesc"] = "Show role icons and the total count for each role on the Blizzard raid pane. You will need to reopen the raid pane for changes to this setting to take effect."
-- L["showVantus"] = "Show Vantus Runes"
-- L["showVantusDesc"] = "Include showing an icon for Vantus Rune buffs. This icon will always be shown if the player has a Vantus Rune buff."
-- L["showWindow"] = "Show window"
-- L["showWindowDesc"] = "Show the window when a ready check is performed."
-- L["skin"] = "Masque skin"
--[==[ L["slashCommands"] = [=[oRA3 sports a range of slash commands to aid you in fast-paced raiding. In case you weren't around in the old CTRA days, here's a little reference. All of the slash commands have various shorthands and also longer, more descriptive alternatives in some cases, for convenience.

|cff44ff44/racd|r - Opens cooldown settings.
|cff44ff44/rabuffs|r - Opens the buff list and outputs results.
|cff44ff44/radur|r - Opens the durability list.
|cff44ff44/ragear|r - Opens the gear check list.
|cff44ff44/ralag|r - Opens the latency list.
|cff44ff44/razone|r - Opens the zone list.
|cff44ff44/racheck|r - Opens the raid check window.
|cff44ff44/radisband|r - Instantly disbands the raid with no verification.
|cff44ff44/raready|r - Performs a ready check.
|cff44ff44/rainv|r - Invites the whole guild to your group.
|cff44ff44/razinv|r - Invites guild members in the same zone as you.
|cff44ff44/rarinv <rank name>|r - Invites guild members of the given rank.]=] ]==]
-- L["slashCommandsHeader"] = "Slash commands"
L["sort"] = "排序"
-- L["spacing"] = "Spacing"
L["spellName"] = "技能"
-- L["spellTooltip"] = "Show spell tooltips"
-- L["statusColor"] = "Status color"
-- L["style"] = "Bar style"
L["tankButtonHelp"] = "切换是否这坦克应该为内建主坦克。"
L["tankHelp"] = [=[在置顶名单的人是你个人排序的坦克。他们并不分享给团队，并且任何人可以拥有不同的个人坦克名单。在置底名单点选一个名称增加他们到你个人坦克名单。

在盾图示上点击就会让那人成为内建主坦克。内建坦克是团队所有人中所共享并且你必须被晋升来做切换。

在名单出现的坦克基於某些人让他们成为内建坦克，当他们不再是内建主坦克就会从名单移除。

在这期间使用检查标记来储存。下一次团队里有那人，他会自动的被设定为个人坦克。]=]
L["tanks"] = "坦克"
L["tankTabTopText"] = "点击下方列表将其设为坦克. 将鼠标移动到按钮上可看到操作提示."
-- L["test"] = "Test"
L["texture"] = "材质"
-- L["thick"] = "Thick"
-- L["thin"] = "Thin"
-- L["timestamp"] = "Show timestamps"
-- L["timeVisible"] = "Time visible (0 = always)"
-- L["toggleMonitor"] = "Toggle monitor"
-- L["togglePane"] = "Toggle oRA3 Pane"
-- L["toggleWithRaid"] = "Open with raid pane"
-- L["toggleWithRaidDesc"] = "Opens and closes the oRA3 pane automatically along with the Blizzard raid pane. If you disable this option you can still open the oRA3 pane using the keybinding or with one of the slash commands, such as |cff44ff44/radur|r."
L["unitName"] = "名字"
L["unknown"] = "未知"
-- L["up"] = "Up"
L["useClassColor"] = "使用职业颜色"
-- L["useStatusColor"] = "Use status color"
-- L["useStatusColorDesc"] = "Change the bar color when a player is out of range, dead, or offline."
L["vantus"] = "凡图斯"
L["whatIsThis"] = "到底怎麽回事?"
-- L["whisperMissing"] = "Whisper missing"
-- L["whisperMissingDesc"] = "Whisper players that are missing buffs."
-- L["world"] = "World"
L["zone"] = "地区"

L.sound = "声音"
