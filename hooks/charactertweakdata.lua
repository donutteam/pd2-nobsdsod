function CharacterTweakData:_set_sm_wish()	
	self:_multiply_all_hp(6, 1.5)

	-- Default Dozer
	self.tank.HEALTH_INIT = 2500
	self.tank.move_speed = self.presets.move_speed.very_fast

	-- Mini Gun Dozer
	self.tank_mini.HEALTH_INIT = 4800
	self.tank_mini.move_speed = self.presets.move_speed.very_fast
	self.tank_mini.weapon.mini.RELOAD_SPEED = 2

	-- Medic Dozer
	self.tank_medic.HEALTH_INIT = 3000
	self.tank_medic.move_speed = self.presets.move_speed.very_fast


	--just make variables on these to cut down on copy pasting
	--zeal heavies (m4)
	--90 - 50
	--average: 75
	local zeal_heavy = {
		aim_delay = {
			0,
			0
		},
		focus_delay = 0,
		focus_dis = 200,
		spread = 20,
		miss_dis = 40,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 3500,
			far = 6000,
			close = 2000
		},
		autofire_rounds = {
			3,
			6
		},
		FALLOFF = {
			{
				dmg_mul = 1,
				r = 100,
				acc = {
					0.9,
					0.975
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					6,
					12
				}
			},
			{
				dmg_mul = 1,
				r = 500,
				acc = {
					0.875,
					0.95
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 1,
				r = 1000,
				acc = {
					0.7,
					0.9
				},
				recoil = {
					0.35,
					0.55
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					3,
					5
				}
			},
			{
				dmg_mul = 1,
				r = 2000,
				acc = {
					0.7,
					0.85
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.65,
					0.75
				},
				recoil = {
					0.7,
					1.1
				},
				mode = {
					3,
					1,
					5,
					0.5
				}
			},
			{
				dmg_mul = 1,
				r = 6000,
				acc = {
					0.25,
					0.7
				},
				recoil = {
					1,
					2
				},
				mode = {
					3,
					1,
					1,
					0
				}
			}
		}
	}

	--zeal lights (mp5)
	--75 - 40
	--average: 60
	local zeal_light = {
		aim_delay = {
			0,
			0
		},
		focus_delay = 0,
		focus_dis = 200,
		spread = 15,
		miss_dis = 10,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 3200,
			far = 6000,
			close = 2000
		},
		autofire_rounds = {
			8,
			16
		},
		FALLOFF = {
			{
				dmg_mul = 1,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.1,
					0.25
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 1,
				r = 500,
				acc = {
					0.9,
					0.9
				},
				recoil = {
					0.1,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					10
				}
			},
			{
				dmg_mul = 1,
				r = 1000,
				acc = {
					0.85,
					0.85
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					3,
					6
				}
			},
			{
				dmg_mul = 1,
				r = 2000,
				acc = {
					0.6,
					0.7
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					6,
					3,
					0
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.55,
					0.6
				},
				recoil = {
					0.5,
					1.5
				},
				mode = {
					1,
					6,
					2,
					0
				}
			},
			{
				dmg_mul = 1,
				r = 4500,
				acc = {
					0.3,
					0.6
				},
				recoil = {
					1,
					1.5
				},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
	}

	--bosses
	self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 1,
			r = 200,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				1,
				2,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 500,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 1000,
			acc = {
				0.4,
				0.8
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 2000,
			acc = {
				0.4,
				0.55
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 3000,
			acc = {
				0.1,
				0.35
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.hector_boss.HEALTH_INIT = 900
	self.mobster_boss.HEALTH_INIT = 900
	self.biker_boss.HEALTH_INIT = 3000
	self.chavez_boss.HEALTH_INIT = 900

	self:_multiply_all_speeds(4.05, 4.1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	--team ai
	self.presets.gang_member_damage.REGENERATE_TIME = 1.8
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	self.presets.gang_member_damage.HEALTH_INIT = 800
	self.presets.weapon.gang_member.is_pistol.FALLOFF = {
		{
			dmg_mul = 1,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_rifle.FALLOFF = {
		{
			dmg_mul = 1,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_sniper.FALLOFF = {
		{
			dmg_mul = 1,
			r = 500,
			acc = {
				1,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 1000,
			acc = {
				1,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 2500,
			acc = {
				0.95,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 4000,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				0.85,
				0.9
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.presets.weapon.gang_member.is_lmg.FALLOFF = {
		{
			dmg_mul = 1,
			r = 100,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 1000,
			acc = {
				0.85,
				0.9
			},
			recoil = {
				0.4,
				0.65
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 2000,
			acc = {
				0.6,
				0.8
			},
			recoil = {
				0.8,
				1.25
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 3000,
			acc = {
				0.5,
				0.7
			},
			recoil = {
				0.8,
				1.25
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 4000,
			acc = {
				0.02,
				0.25
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				0.01,
				0.1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0,
				0,
				0,
				1
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_pump.FALLOFF = {
		{
			dmg_mul = 1,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 1,
			r = 100,
			acc = {
				1,
				1
			},
			recoil = {
				0.1,
				0.1
			},
			mode = {
				1,
				1,
				4,
				6
			}
		},
		{
			dmg_mul = 1,
			r = 500,
			acc = {
				1,
				1
			},
			recoil = {
				0.1,
				0.1
			},
			mode = {
				1,
				1,
				4,
				5
			}
		},
		{
			dmg_mul = 1,
			r = 1000,
			acc = {
				0.85,
				0.95
			},
			recoil = {
				0.1,
				0.15
			},
			mode = {
				1,
				2,
				4,
				4
			}
		},
		{
			dmg_mul = 1,
			r = 2000,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				1,
				4,
				4,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 3000,
			acc = {
				0.4,
				0.7
			},
			recoil = {
				0.4,
				0.5
			},
			mode = {
				4,
				2,
				1,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				0.05,
				0.2
			},
			recoil = {
				0.5,
				1
			},
			mode = {
				2,
				1,
				0,
				0
			}
		}
	}
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)

	self:_set_characters_weapon_preset("deathwish")

	self.spooc.spooc_attack_timeout = {3, 4}

	--sniper (psg-1)
	--240
	self.sniper.weapon.is_rifle.FALLOFF = {
		{
			r = 700,
			acc = {0.7, 1},
			dmg_mul = 3,
			recoil = {3, 5},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 4000,
			acc = {0.6, 0.95},
			dmg_mul = 2.5,
			recoil = {3, 5},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 10000,
			acc = {0.2, 0.8},
			dmg_mul = 2,
			recoil = {3, 5},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}

	--bulldozer (saiga)
	--270 - 105
	-- average: 210
	self.tank.weapon.is_shotgun_mag.aim_delay = {
		0,
		0
	}
	self.tank.weapon.is_shotgun_mag.focus_delay = 0
	self.tank.weapon.is_shotgun_mag.focus_dis = 200
	self.tank.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 1,
			r = 100,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 500,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 1000,
			acc = {
				0.7,
				0.85
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 2000,
			acc = {
				0.5,
				0.65
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 3000,
			acc = {
				0.3,
				0.5
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}

	--bulldozer (870)
	--630 - 28
	--average: 490
	self.tank.weapon.is_shotgun_pump.focus_dis = 200
	self.tank.weapon.is_shotgun_pump.FALLOFF[1].dmg_mul = 9
	self.tank.weapon.is_shotgun_pump.FALLOFF[2].dmg_mul = 8
	self.tank.weapon.is_shotgun_pump.FALLOFF[3].dmg_mul = 7

	--elite bulldozer (m249)
	--80 - 60
	--average: 80
	self.tank.weapon.is_rifle.aim_delay = {
		0,
		0
	}
	self.tank.weapon.is_rifle.focus_delay = 0
	self.tank.weapon.is_rifle.FALLOFF = {
		{
			dmg_mul = 1,
			r = 100,
			acc = {
				0.7,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 500,
			acc = {
				0.5,
				0.75
			},
			recoil = {
				0.5,
				0.8
			},
			mode = {
				0,
				0,
				0,
				6
			}
		},
		{
			dmg_mul = 1,
			r = 1000,
			acc = {
				0.3,
				0.6
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				2,
				6
			}
		},
		{
			dmg_mul = 1,
			r = 2000,
			acc = {
				0.25,
				0.55
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				2,
				6
			}
		},
		{
			dmg_mul = 1,
			r = 3000,
			acc = {
				0.15,
				0.5
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				2,
				6
			}
		}
	}

	--minigun bulldozer (m134)
	--80 - 20
	--average: 60
	self.tank_mini.weapon.mini.aim_delay = {
		0,
		0
	}
	self.tank_mini.weapon.mini.focus_delay = 0
	self.tank_mini.weapon.mini.FALLOFF = {
		{
			dmg_mul = 1,
			r = 100,
			acc = {
				0.7,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				500,
				700
			}
		},
		{
			dmg_mul = 1,
			r = 500,
			acc = {
				0.5,
				0.75
			},
			recoil = {
				0.5,
				0.8
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				500,
				500
			}
		},
		{
			dmg_mul = 1,
			r = 1000,
			acc = {
				0.3,
				0.6
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				300,
				500
			}
		},
		{
			dmg_mul = 1,
			r = 2000,
			acc = {
				0.25,
				0.55
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				100,
				300
			}
		},
		{
			dmg_mul = 1,
			r = 3000,
			acc = {
				0.15,
				0.5
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				40,
				100
			}
		}
	}

	--medic bulldozer (mp5)
	--40 - 20
	--average: 40 
	self.tank_medic.weapon.is_smg = {
		aim_delay = {
			0,
			0
		},
		focus_delay = 0,
		focus_dis = 200,
		spread = 15,
		miss_dis = 10,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 3200,
			far = 6000,
			close = 2000
		},
		autofire_rounds = {
			8,
			16
		},
		FALLOFF = {
			{
				dmg_mul = 1,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.1,
					0.25
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 1,
				r = 500,
				acc = {
					0.9,
					0.9
				},
				recoil = {
					0.1,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					10
				}
			},
			{
				dmg_mul = 1,
				r = 1000,
				acc = {
					0.85,
					0.85
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					3,
					6
				}
			},
			{
				dmg_mul = 1,
				r = 2000,
				acc = {
					0.6,
					0.7
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					6,
					3,
					0
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.55,
					0.6
				},
				recoil = {
					0.5,
					1.5
				},
				mode = {
					1,
					6,
					2,
					0
				}
			},
			{
				dmg_mul = 1,
				r = 4500,
				acc = {
					0.3,
					0.6
				},
				recoil = {
					1,
					1.5
				},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
	}

	--shield (mp9)
	--70
	self.shield.weapon.is_smg.aim_delay = {0, 0}
	self.shield.weapon.is_smg.focus_delay = 0
	self.shield.weapon.is_smg.focus_dis = 200
	self.shield.weapon.is_smg.FALLOFF = {
		{
			r = 0,
			acc = {0.9, 0.95},
			dmg_mul = 1,
			recoil = {0.35, 0.35},
			mode = {
				0.2,
				2,
				4,
				10
			}
		},
		{
			r = 700,
			acc = {0.8, 0.8},
			dmg_mul = 1,
			recoil = {0.35, 0.55},
			mode = {
				0.2,
				2,
				4,
				10
			}
		},
		{
			r = 1000,
			acc = {0.6, 0.65},
			dmg_mul = 1,
			recoil = {0.35, 0.55},
			mode = {
				0.2,
				2,
				4,
				10
			}
		},
		{
			r = 2000,
			acc = {0.5, 0.7},
			dmg_mul = 1,
			recoil = {0.35, 1},
			mode = {
				2,
				5,
				6,
				4
			}
		},
		{
			r = 3000,
			acc = {0.5, 0.5},
			dmg_mul = 1,
			recoil = {0.5, 1.2},
			mode = {
				6,
				4,
				2,
				0
			}
		}
	}

	--shield (g17, map spawn)
	--identical to mp9 except fire rate/acc
	self.shield.weapon.is_pistol.aim_delay = {0, 0}
	self.shield.weapon.is_pistol.focus_delay = 0
	self.shield.weapon.is_pistol.FALLOFF = {
		{
			r = 100,
			acc = {0.95, 0.95},
			dmg_mul = 1,
			recoil = {0.1, 0.25},
			mode = {
				0,
				3,
				3,
				4
			}
		},
		{
			r = 500,
			acc = {0.6, 0.75},
			dmg_mul = 1,
			recoil = {0.1, 0.3},
			mode = {
				0,
				3,
				3,
				4
			}
		},
		{
			r = 1000,
			acc = {0.5, 0.65},
			dmg_mul = 1,
			recoil = {0.35, 0.5},
			mode = {
				0,
				6,
				3,
				3
			}
		},
		{
			r = 2000,
			acc = {0.5, 0.6},
			dmg_mul = 1,
			recoil = {0.35, 0.5},
			mode = {
				0,
				6,
				3,
				0
			}
		},
		{
			r = 3000,
			acc = {0.5, 0.6},
			dmg_mul = 1,
			recoil = {0.5, 1.5},
			mode = {
				1,
				6,
				2,
				0
			}
		}
	}

		--zeal heavies (m4)
		self.heavy_swat.weapon.is_rifle = zeal_heavy

		--medic (m4)
		self.medic.weapon.is_rifle = zeal_heavy

		--tans (g36/m4, map spawn)
		--same as zeal heavies
		self.fbi_heavy_swat.weapon.is_rifle = zeal_heavy

		--gensec elites (g36, map spawn)
		--same as zeal heavies
		self.city_swat.weapon.is_rifle = zeal_heavy

		--zeal lights (mp5)
		self.swat.weapon.is_smg = zeal_light

		--cloakers (mp5)
		--same as zeal lights
		self.spooc.weapon.is_smg = zeal_light

		--gensec elites/murkies (ump, map spawn)
		--same as zeal lights
		self.city_swat.damage.explosion_damage_mul = 1
		-- self.city_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		self.city_swat.weapon.is_smg = zeal_light

		--tasers (m4)
		--same as zeal heavies
		--has to be manually set
		self.taser.weapon.is_rifle.FALLOFF = {
				{
					dmg_mul = 1,
					r = 100,
					acc = {
						0.9,
						0.975
					},
					recoil = {
						0.25,
						0.3
					},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					dmg_mul = 1,
					r = 500,
					acc = {
						0.875,
						0.95
					},
					recoil = {
						0.25,
						0.3
					},
					mode = {
						0,
						3,
						8,
						1
					}
				},
				{
					dmg_mul = 1,
					r = 1000,
					acc = {
						0.7,
						0.9
					},
					recoil = {
						0.35,
						0.55
					},
					mode = {
						0,
						2,
						5,
						1
					}
				},
				{
					dmg_mul = 1,
					r = 2000,
					acc = {
						0.7,
						0.85
					},
					recoil = {
						0.4,
						0.7
					},
					mode = {
						3,
						2,
						5,
						1
					}
				},
				{
					dmg_mul = 1,
					r = 3000,
					acc = {
						0.65,
						0.75
					},
					recoil = {
						0.7,
						1.1
					},
					mode = {
						3,
						1,
						5,
						0.5
					}
				},
				{
					dmg_mul = 1,
					r = 6000,
					acc = {
						0.25,
						0.7
					},
					recoil = {
						1,
						2
					},
					mode = {
						3,
						1,
						1,
						0
					}
				}
			}
	

	--phalanx
	--unchanged due to grace period differences
	self.phalanx_minion.HEALTH_INIT = 400
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 40
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
	self.phalanx_vip.HEALTH_INIT = 800
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 80
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET

	self.flashbang_multiplier = 2
	self.concussion_multiplier = 1	
end