function PlayerTweakData:_set_sm_wish()
	self.damage.DOWNED_TIME_DEC = 20
	self.damage.DOWNED_TIME_MIN = 1
	self.suspicion.max_value = 12
	self.suspicion.range_mul = 1.4
	self.suspicion.buildup_mul = 1.4
	self.damage.BLEED_OT_TIME = 10
	self.damage.LIVES_INIT = 4
	self.damage.MIN_DAMAGE_INTERVAL = 1.0
	self.damage.REVIVE_HEALTH_STEPS = {0.1}
end