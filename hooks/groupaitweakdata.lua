Hooks:PostHook( GroupAITweakData, "_init_unit_categories", "PhalanxTest", function( self, difficulty_index )
	if difficulty_index == 8 then

		-- spawn limits
		self.special_unit_spawn_limits =
		{
			shield = 20,
			medic = 4,
			taser = 4,
			tank = 4,
			spooc = 4
		}
		
		-- spooc units (cloaker)
		self.unit_categories.spooc.unit_types.america =
		{
			Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
			Idstring("units/payday2/characters/ene_spook_1/ene_spook_1")
		}

		-- tazer units
		self.unit_categories.CS_tazer.unit_types.america =
		{
			Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer/ene_zeal_tazer"),
			-- Idstring("units/payday2/characters/ene_fbi_1/ene_fbi_1")
		}

		local shield_units =
		{
			-- Included
			Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1"),
			Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
			Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
			Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
		}


		self.unit_categories.CS_shield.unit_types.america = shield_units
		self.unit_categories.FBI_shield.unit_types.america = shield_units
		
		-- iterate through all self.unit_categories and change access to access_type_all
		for k, category in pairs(self.unit_categories) do
			self.unit_categories[k].access =
			{
				acrobatic = true,
				walk = true
			}
		end
	end
end)