if not IsTestBuild() then return end
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Zskarn", 2569, 2532)
if not mod then return end
mod:RegisterEnableMob(202375) -- Zskarn
mod:SetEncounterID(2689)
mod:SetRespawnTime(30)
mod:SetStage(1)

--------------------------------------------------------------------------------
-- Locals
--

local mobCollector = {}
local marksUsed = {}
local dragonfireTrapsCount = 1
local animateGolemsCount = 1
local tacticalDestructionCount = 1
local shrapnelBombCount = 1
local unstableEmbersCount = 1
local blastWaveCount = 1

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:GetLocale()
if L then
	L.bombs_soaked = "Bombs Soaked" -- Bombs Soaked (2/4)
end

--------------------------------------------------------------------------------
-- Initialization
--

local animateGolemsMarker = mod:AddMarkerOption(false, "npc", 8, -26394, 8, 7, 6, 5) -- Animate Golems
function mod:GetOptions()
	return {
		405736, -- Dragonfire Traps
		405812, -- Animate Golems
		animateGolemsMarker,
		405592, -- Salvage Parts
		406678, -- Tactical Destruction
		406725, -- Shrapnel Bomb
		{404010, "SAY"}, -- Unstable Embers
		403978, -- Blast Wave
		{404942, "TANK"}, -- Searing Claws
	}
end

function mod:OnBossEnable()
	self:Log("SPELL_CAST_START", "DragonfireTraps", 405736)
	self:Log("SPELL_CAST_START", "AnimateGolems", 405812)
	self:Log("SPELL_AURA_APPLIED", "SalvageParts", 405592)
	self:Log("SPELL_CAST_START", "TacticalDestruction", 406678)
	self:Log("SPELL_CAST_SUCCESS", "ShrapnelBomb", 406725)
	self:Log("SPELL_DAMAGE", "ShrapnelBombSoaked", 404955)
	self:Log("SPELL_MISSED", "ShrapnelBombSoaked", 404955)
	self:Log("SPELL_CAST_SUCCESS", "UnstableEmbers", 404007)
	self:Log("SPELL_AURA_APPLIED", "UnstableEmbersApplied", 404010)
	self:Log("SPELL_CAST_START", "BlastWave", 403978)
	self:Log("SPELL_AURA_APPLIED", "SearingClawsApplied", 404942)
	self:Log("SPELL_AURA_APPLIED_DOSE", "SearingClawsApplied", 404942)
end

function mod:OnEngage()
	mobCollector = {}
	marksUsed = {}
	dragonfireTrapsCount = 1
	animateGolemsCount = 1
	tacticalDestructionCount = 1
	shrapnelBombCount = 1
	unstableEmbersCount = 1
	blastWaveCount = 1

	self:Bar(404010, 7, CL.count:format(self:SpellName(404010), unstableEmbersCount)) -- Unstable Embers
	self:Bar(403978, 10.5, CL.count:format(self:SpellName(403978), blastWaveCount)) -- Blast Wave
	self:Bar(406725, 14.5, CL.count:format(self:SpellName(406725), shrapnelBombCount)) -- Shrapnel Bomb
	self:Bar(405736, 20.5, CL.count:format(self:SpellName(405736), dragonfireTrapsCount)) -- Dragonfire Traps
	self:Bar(405812, 35.5, CL.count:format(self:SpellName(405812), animateGolemsCount)) -- Animate Golems
	self:Bar(406678, 47.5, CL.count:format(self:SpellName(406678), tacticalDestructionCount)) -- Tactical Destruction

	if self:GetOption(animateGolemsMarker) then
		self:RegisterTargetEvents("AddMarking")
	end
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:DragonfireTraps(args)
	self:StopBar(CL.count:format(args.spellName, dragonfireTrapsCount))
	self:Message(args.spellId, "yellow", CL.count:format(args.spellName, dragonfireTrapsCount))
	self:PlaySound(args.spellId, "alert")
	dragonfireTrapsCount = dragonfireTrapsCount + 1
	self:Bar(args.spellId, 32.5, CL.count:format(args.spellName, dragonfireTrapsCount))
end

function mod:AnimateGolems(args)
	self:StopBar(CL.count:format(args.spellName, animateGolemsCount))
	self:Message(args.spellId, "cyan", CL.count:format(args.spellName, animateGolemsCount))
	self:PlaySound(args.spellId, "info")
	animateGolemsCount = animateGolemsCount + 1
	self:Bar(args.spellId, 60, CL.count:format(args.spellName, animateGolemsCount))

	marksUsed = {}
end

function mod:AddMarking(_, unit, guid)
	if not mobCollector[guid] then
		local mobId = self:MobId(guid)
		if mobId == 203230 then -- Dragonfire Golem
			for i = 8, 5, -1 do -- 8, 7, 6, 5
				if not marksUsed[i] then
					mobCollector[guid] = true
					marksUsed[i] = guid
					self:CustomIcon(animateGolemsMarker, unit, i)
					return
				end
			end
		end
	end
end

function mod:SalvageParts(args)
	if self:Me(args.destGUID) then
		self:Message(args.spellId, "green", CL.you:format(args.spellName))
		self:PlaySound(args.spellId, "info")
	end
end

function mod:TacticalDestruction(args)
	self:StopBar(CL.count:format(args.spellName, tacticalDestructionCount))
	self:Message(args.spellId, "orange", CL.count:format(args.spellName, tacticalDestructionCount))
	self:PlaySound(args.spellId, "alarm")
	tacticalDestructionCount = tacticalDestructionCount + 1
	self:Bar(args.spellId, 61.5, CL.count:format(args.spellName, tacticalDestructionCount))
end

do
	local bombsSoaked = 0
	function mod:ShrapnelBomb(args)
		self:StopBar(CL.count:format(args.spellName, shrapnelBombCount))
		self:Message(args.spellId, "yellow", CL.count:format(args.spellName, shrapnelBombCount))
		self:PlaySound(args.spellId, "alert")
		shrapnelBombCount = shrapnelBombCount + 1
		self:Bar(args.spellId, 42.5, CL.count:format(args.spellName, shrapnelBombCount))

		bombsSoaked = 0
		-- 2s cast, 30s after
		self:Bar(args.spellId, 32, CL.count:format(CL.explosion, shrapnelBombCount))
	end

	function mod:ShrapnelBombSoaked()
		bombsSoaked = bombsSoaked + 1
		self:Message(406725, bombsSoaked == 4 and "green" or "yellow", CL.count_amount:format(L.bombs_soaked, bombsSoaked, 4))
		if bombsSoaked == 4 then -- Done
			self:StopBar(CL.count:format(CL.explosion, shrapnelBombCount))
		end
	end
end

function mod:UnstableEmbers(args)
	self:Message(404010, "red", CL.count:format(args.spellName, unstableEmbersCount))
	unstableEmbersCount = unstableEmbersCount + 1
	self:Bar(404010, 20.5, CL.count:format(args.spellName, unstableEmbersCount))
end

function mod:UnstableEmbersApplied(args)
	if self:Me(args.destGUID) then
		self:PersonalMessage(args.spellId)
		self:PlaySound(args.spellId, "warning")
		self:Say(args.spellId)
	end
end

function mod:BlastWave(args)
	self:StopBar(CL.count:format(args.spellName, blastWaveCount))
	self:Message(args.spellId, "red", CL.count:format(args.spellName, blastWaveCount))
	self:PlaySound(args.spellId, "alert")
	blastWaveCount = blastWaveCount + 1
	self:Bar(args.spellId, 33.5, CL.count:format(args.spellName, blastWaveCount))
end

function mod:SearingClawsApplied(args)
	self:StackMessage(args.spellId, "purple", args.destName, args.amount, 2)
	if (args.amount or 0) > 5 and self:Tank() and not self:Tanking("boss1") then
		self:PlaySound(args.spellId, "warning")
	end
end
