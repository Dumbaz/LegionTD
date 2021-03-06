EXPORTS = {}

EXPORTS.Init = function( self )
	self:SetContextThink( "init_think", function()
		self:FindAbilityByName("bane_brain_sap"):SetLevel(1)
		self.aiThink = aiThinkStandardSkill
		self.CheckIfHasAggro = CheckIfHasAggro
		self.Skill = UseSkillOnTarget
		self.ability = self:FindAbilityByName("bane_brain_sap")
		self.Unstuck = Unstuck
		self:SetContextThink( "ai_voidelemental.aiThink", Dynamic_Wrap( self, "aiThink" ), 0 )
	end, 0 )
end

return EXPORTS
