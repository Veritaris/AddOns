--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Halls of Infusion Trash", 2527)
if not mod then return end
mod.displayName = CL.trash
mod:RegisterEnableMob(
	190348, -- Primalist Ravager
	190345, -- Primalist Geomancer
	190342, -- Containment Apparatus
	190340, -- Refti Defender
	197560, -- Limited Immortality Device
	190362, -- Dazzling Dragonfly
	190366, -- Curious Swoglet
	190368, -- Flamecaller Aymi
	190370, -- Squallbringer Cyraz
	197654, -- Infused Mushroom
	190371, -- Primalist Earthshaker
	190373, -- Primalist Galesinger
	190377, -- Primalist Icecaller
	190401, -- Gusting Proto-Dragon
	190403, -- Glacial Proto-Dragon
	190404, -- Subterranean Proto-Dragon
	190407, -- Aqua Rager
	190405  -- Infuser Sariya
)

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:GetLocale()
if L then
	L.custom_on_autotalk = "Autotalk"
	L.custom_on_autotalk_desc = "Instantly selects the gossip options to get profession buffs."

	L.primalist_ravager = "Primalist Ravager"
	L.primalist_geomancer = "Primalist Geomancer"
	L.containment_apparatus = "Containment Apparatus"
	L.refti_defender = "Refti Defender"
	L.dazzling_dragonfly = "Dazzling Dragonfly"
	L.curious_swoglet = "Curious Swoglet"
	L.flamecaller_aymi = "Flamecaller Aymi"
	L.squallbringer_cyraz = "Squallbringer Cyraz"
	L.primalist_earthshaker = "Primalist Earthshaker"
	L.primalist_galesinger = "Primalist Galesinger"
	L.primalist_icecaller = "Primalist Icecaller"
	L.gusting_protodragon = "Gusting Proto-Dragon"
	L.glacial_protodragon = "Glacial Proto-Dragon"
	L.subterranean_protodragon = "Subterranean Proto-Dragon"
	L.aqua_rager = "Aqua Rager"
	L.infuser_sariya = "Infuser Sariya"
end

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		-- General
		"custom_on_autotalk",
		-- Primalist Ravager
		374080, -- Blasting Gust
		-- Primalist Geomancer
		--374066, -- Earth Shield
		-- Containment Apparatus
		374045, -- Expulse
		-- Refti Defender
		374339, -- Demoralizing Shout
		-- Dazzling Dragonfly
		374563, -- Dazzle
		-- Curious Swoglet
		{374389, "DISPEL"}, -- Gulp Swog Toxin
		-- Flamecaller Aymi
		374724, -- Molten Subduction
		374741, -- Magma Crush
		-- Squallbringer Cyraz
		375079, -- Whirling Fury
		374823, -- Zephyr's Call
		-- Primalist Earthshaker
		375384, -- Rumbling Earth
		-- Primalist Galesinger
		{385141, "SAY"}, -- Thunderstorm
		-- Primalist Icecaller
		376171, -- Refreshing Tides
		-- Gusting Proto-Dragon
		375348, -- Gusting Breath
		{391610, "DISPEL"}, -- Binding Winds
		-- Glacial Proto-Dragon
		375351, -- Oceanic Breath
		-- Subterranean Proto-Dragon
		375327, -- Tectonic Breath
		391613, -- Creeping Mold
		-- Aqua Rager
		377341, -- Tidal Divergence
		-- Infuser Sariya
		377402, -- Aqueous Barrier
		390290, -- Flash Flood
	}, {
		["custom_on_autotalk"] = CL.general,
		[374080] = L.primalist_ravager,
		--[374066] = L.primalist_geomancer,
		[374045] = L.containment_apparatus,
		[374339] = L.refti_defender,
		[374563] = L.dazzling_dragonfly,
		[374389] = L.curious_swoglet,
		[374724] = L.flamecaller_aymi,
		[375079] = L.squallbringer_cyraz,
		[375384] = L.primalist_earthshaker,
		[385141] = L.primalist_galesinger,
		[376171] = L.primalist_icecaller,
		[375348] = L.gusting_protodragon,
		[375351] = L.glacial_protodragon,
		[375327] = L.subterranean_protodragon,
		[377341] = L.aqua_rager,
		[377402] = L.infuser_sariya,
	}
end

function mod:OnBossEnable()
	self:RegisterEvent("GOSSIP_SHOW")

	-- Primalist Ravager
	self:Log("SPELL_CAST_START", "BlastingGust", 374080)

	-- Primalist Geomancer
	--self:Log("SPELL_CAST_START", "EarthShield", 374066)

	-- Containment Apparatus
	self:Log("SPELL_CAST_START", "Expulse", 374045)

	-- Refti Defender
	self:Log("SPELL_CAST_START", "DemoralizingShout", 374339)

	-- Dazzling Dragonfly
	self:Log("SPELL_CAST_START", "Dazzle", 374563)

	-- Curious Swoglet
	self:Log("SPELL_AURA_APPLIED_DOSE", "GulpSwogToxinApplied", 374389)

	-- Flamecaller Aymi
	self:Log("SPELL_AURA_APPLIED", "MoltenSubductionApplied", 374724)
	self:Log("SPELL_CAST_SUCCESS", "MagmaCrush", 374735)
	self:Death("FlamecallerAymiDeath", 190368)

	-- Squallbringer Cyraz
	self:Log("SPELL_CAST_START", "WhirlingFury", 375079)
	self:Log("SPELL_CAST_START", "ZephyrsCall", 374823)
	self:Death("SquallbringerCyrazDeath", 190370)

	-- Primalist Earthshaker
	self:Log("SPELL_CAST_START", "RumblingEarth", 375384)

	-- Primalist Galesinger
	self:Log("SPELL_CAST_START", "Thunderstorm", 385141)
	self:Log("SPELL_AURA_APPLIED", "ThunderstormDamage", 385168)
	self:Log("SPELL_PERIODIC_DAMAGE", "ThunderstormDamage", 385168)
	self:Log("SPELL_PERIODIC_MISSED", "ThunderstormDamage", 385168)

	-- Primalist Galesinger
	self:Log("SPELL_CAST_START", "RefreshingTides", 376171)

	-- Gusting Proto-Dragon
	self:Log("SPELL_CAST_START", "GustingBreath", 375348)
	self:Log("SPELL_AURA_APPLIED", "BindingWindsApplied", 391610)

	-- Glacial Proto-Dragon
	self:Log("SPELL_CAST_START", "OceanicBreath", 375351)

	-- Subterranean Proto-Dragon
	self:Log("SPELL_CAST_START", "TectonicBreath", 375327)
	self:Log("SPELL_AURA_APPLIED", "CreepingMoldApplied", 391613)

	-- Aqua Rager
	self:Log("SPELL_CAST_START", "TidalDivergence", 377341)

	-- Infuser Sariya
	self:Log("SPELL_CAST_START", "AqueousBarrier", 377402)
	self:Log("SPELL_AURA_APPLIED", "AqueousBarrierApplied", 377402)
	self:Log("SPELL_CAST_START", "FlashFlood", 390290)
end

--------------------------------------------------------------------------------
-- Event Handlers
--

-- General

function mod:GOSSIP_SHOW()
	if self:GetOption("custom_on_autotalk") then
		if self:GetGossipID(107192) then
			-- Limited Immortality Device (gives Limited Immortality buff, prevents next death)
			-- requires 25 skill in Dragon Isles Engineering
			self:SelectGossipID(107192)
		elseif self:GetGossipID(107205) then
			-- Infused Mushroom (gives Cleansing Spores buff, auto-poison/disease dispel)
			-- requires 25 skill in Dragon Isles Herbalism
			-- TODO confirm gossip ID
			self:SelectGossipID(107205)
		end
	end
end

-- Primalist Ravager

function mod:BlastingGust(args)
	self:Message(args.spellId, "yellow", CL.casting:format(args.spellName))
	self:PlaySound(args.spellId, "alarm")
end

-- Primalist Geomancer

-- TODO this is cast during rp fighting and UnitAffectingCombat is always true
function mod:EarthShield(args)
	local unit = self:GetUnitIdByGUID(args.sourceGUID)
	if unit and UnitAffectingCombat(unit) then
		--self:Message(args.spellId, "orange")
		--self:PlaySound(args.spellId, "alert")
	end
end

-- Containment Apparatus

do
	local prev = 0
	function mod:Expulse(args)
		local t = args.time
		if t - prev > 1 then
			prev = t
			self:Message(args.spellId, "yellow", CL.casting:format(args.spellName))
			self:PlaySound(args.spellId, "warning")
		end
	end
end

-- Refti Defender

do
	local prev = 0
	function mod:DemoralizingShout(args)
		local t = args.time
		if t - prev > 1 then
			prev = t
			self:Message(args.spellId, "red")
			self:PlaySound(args.spellId, "alert")
		end
	end
end

-- Dazzling Dragonfly

function mod:Dazzle(args)
	self:Message(args.spellId, "orange", CL.casting:format(args.spellName))
	self:PlaySound(args.spellId, "alarm")
end

-- Curious Swoglet

do
	local prev = 0
	function mod:GulpSwogToxinApplied(args)
		if self:MobId(args.sourceGUID) == 190366 then -- only handle trash version
			local amount = args.amount
			if amount >= 6 and (self:Dispeller("poison", nil, args.spellId) or self:Me(args.destGUID)) then
				local t = args.time
				-- this can sometimes apply rapidly or to more than one person, so add a short throttle.
				-- but always display the 9 stack warning for each player since 10 stacks kills instantly.
				if amount == 9 or t - prev > 1 then
					prev = t

					-- insta-kill at 10 stacks
					self:StackMessage(args.spellId, "red", args.destName, amount, 8)
					if amount < 8 then
						self:PlaySound(args.spellId, "alert", nil, args.destName)
					else
						self:PlaySound(args.spellId, "warning", nil, args.destName)
					end
				end
			end
		end
	end
end

-- Flamecaller Aymi

function mod:MoltenSubductionApplied(args)
	-- either movement dispel the target, target immunes/moves out, or everyone stacks on target (meteor)
	self:TargetMessage(args.spellId, "red", args.destName)
	self:PlaySound(args.spellId, "alert", nil, args.destName)
	self:CDBar(args.spellId, 19.4)
end

function mod:MagmaCrush(args)
	self:Message(374741, "orange")
	self:PlaySound(374741, "alarm")
end

function mod:FlamecallerAymiDeath(args)
	self:StopBar(374724) -- Molten Subduction
end

-- Squallbringer Cyraz

function mod:WhirlingFury(args)
	-- this is cast only immediately after Gale Force Charge which has a minimum range
	self:Message(args.spellId, "orange")
	self:PlaySound(args.spellId, "alarm")
	self:CDBar(args.spellId, 22.5)
end

function mod:ZephyrsCall(args)
	self:Message(args.spellId, "yellow")
	self:PlaySound(args.spellId, "long")
	self:CDBar(args.spellId, 21.8)
end

function mod:SquallbringerCyrazDeath(args)
	self:StopBar(375079) -- Whirling Fury
	self:StopBar(374823) -- Zephyr's Call
end

-- Primalist Earthshaker

do
	local prev = 0
	function mod:RumblingEarth(args)
		local t = args.time
		if t - prev > 1 then
			prev = t
			self:Message(args.spellId, "yellow", CL.casting:format(args.spellName))
			self:PlaySound(args.spellId, "alarm")
		end
	end
end

-- Primalist Galesinger

do
	local function printTarget(self, name, guid)
		self:TargetMessage(385141, "orange", name)
		self:PlaySound(385141, "alarm", nil, name)
		if self:Me(guid) then
			self:Say(385141)
		end
	end

	function mod:Thunderstorm(args)
		self:GetUnitTarget(printTarget, 0.4, args.sourceGUID)
	end
end

do
	local prev = 0
	function mod:ThunderstormDamage(args)
		if self:Me(args.destGUID) then
			local t = args.time
			if t - prev > 2 then
				prev = t
				self:PersonalMessage(385141, "underyou")
				self:PlaySound(385141, "underyou")
			end
		end
	end
end

-- Primalist Icecaller

function mod:RefreshingTides(args)
	self:Message(args.spellId, "yellow")
	self:PlaySound(args.spellId, "alert")
end

-- Gusting Proto-Dragon

function mod:GustingBreath(args)
	self:Message(args.spellId, "purple")
	self:PlaySound(args.spellId, "alarm")
end

function mod:BindingWindsApplied(args)
	-- there is a cast but is not interruptible
	if self:Me(args.destGUID) then
		self:PersonalMessage(args.spellId)
		self:PlaySound(args.spellId, "alert")
	elseif self:Dispeller("magic", nil, args.spellId) then
		self:TargetMessage(args.spellId, "red", args.destName)
		self:PlaySound(args.spellId, "warning", nil, args.destName)
	end
end

-- Glacial Proto-Dragon

function mod:OceanicBreath(args)
	self:Message(args.spellId, "purple")
	self:PlaySound(args.spellId, "alarm")
end

-- Subterranean Proto-Dragon

function mod:TectonicBreath(args)
	self:Message(args.spellId, "purple")
	self:PlaySound(args.spellId, "alarm")
end

function mod:CreepingMoldApplied(args)
	-- there is a cast but is not interruptible
	if self:Dispeller("disease", nil, args.spellId) or self:Me(args.destGUID) then
		self:TargetMessage(args.spellId, "red", args.destName)
		self:PlaySound(args.spellId, "alert", nil, args.destName)
	end
end

-- Aqua Rager

do
	local prev = 0
	function mod:TidalDivergence(args)
		local t = args.time
		if t - prev > 1 then
			prev = t
			self:Message(args.spellId, "yellow", CL.casting:format(args.spellName))
			self:PlaySound(args.spellId, "alert")
		end
	end
end

-- Infuser Sariya

function mod:AqueousBarrier(args)
	self:Message(args.spellId, "red")
	self:PlaySound(args.spellId, "alert")
end

function mod:AqueousBarrierApplied(args)
	if self:Dispeller("magic", true) and not self:Player(args.destFlags) then
		self:Message(args.spellId, "yellow", CL.on:format(args.spellName, args.destName))
		self:PlaySound(args.spellId, "warning")
	end
end

function mod:FlashFlood(args)
	self:Message(args.spellId, "orange")
	self:PlaySound(args.spellId, "alarm")
end
