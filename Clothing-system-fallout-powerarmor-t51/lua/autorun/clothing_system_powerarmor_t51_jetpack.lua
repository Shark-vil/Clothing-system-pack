sound.Add({
	name = "jetpack_ignition",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "kuma96/powerarmor_t51/jetpack_ignition.wav"
})

sound.Add({
	name = "jetpack_flame",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "kuma96/powerarmor_t51/jetpack_flame.wav"
})

sound.Add({
	name = "jetpack_extinct",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "kuma96/powerarmor_t51/jetpack_extinct.wav"
})

if SERVER then
	timer.Simple(5, function()
		hook.Remove("Tick", "t51flame_keep_effect")
		hook.Remove("KeyPress", "t51flame_start_effect")
		hook.Remove("Think", "t51flame_changegravity")
	end)

	ClothingSystem.Tools.Hooks.AddHook("Think", function()
		local players = player.GetAll()
		local j = #players
		
		if (j == 0) then return end

		for i = 1, j do
			local ply = players[i]
			if (ply:GetMoveType() != MOVETYPE_WALK) then return end

			if (ply:GetModel() != "models/kuma96/powerarmor_t51/powerarmor_t51_pm.mdl" && ply:GetModel() != "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl" && ply.ClothingSystemPlayerIsSpawn && !ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
				if (ply.powerarmor_t51_jetpack) then
					ply:StopSound("jetpack_ignition")
					ply:StopSound("jetpack_flame")
					ply:StopSound("jetpack_extinct")
					ply:SetGravity(1)
				end
				return
			end
			
			if (ply:GetBodygroup(1) != 1) then
				return
			end

			if (ply:WaterLevel() >= 1) then
				if (ply.powerarmor_t51_jetpack) then
					ply:StopSound("jetpack_ignition")
					ply:StopSound("jetpack_flame")
					ply:StopSound("jetpack_extinct")
					ply:EmitSound("jetpack_extinct")
					ply:SetGravity(1)
					ply.powerarmor_t51_jetpack_IsWater = true
					ply.powerarmor_t51_jetpack = false
				end
				return
			else
				if (ply.powerarmor_t51_jetpack_IsWater) then
					ply.powerarmor_t51_jetpack_IsWater = false
				end
			end

			if (ply:IsOnGround() && ply.powerarmor_t51_jetpack) then
				ply:StopSound("jetpack_ignition")
				ply:StopSound("jetpack_flame")
				ply:StopSound("jetpack_extinct")
				ply:EmitSound("jetpack_extinct")
				ply:SetGravity(1)
				ply.powerarmor_t51_jetpack = false
				return
			end

			if (ply.powerarmor_t51_jetpack) then
				local effectdata = EffectData()
				effectdata:SetEntity(ply)
				util.Effect("powerarmort51_flame", effectdata)
			end
			
			if (ply:KeyDown(IN_JUMP) && !ply.powerarmor_t51_jetpack && !ply:IsOnGround() && !ply.powerarmor_t51_jetpack_IsWater) then
				ply:StopSound("jetpack_ignition")
				ply:StopSound("jetpack_flame")
				ply:StopSound("jetpack_extinct")
				ply:EmitSound("jetpack_ignition")
				ply:EmitSound("jetpack_flame")
				ply:SetGravity(0.1)
				ply.powerarmor_t51_jetpack = true
				return
			elseif (ply:KeyReleased(IN_JUMP) && ply.powerarmor_t51_jetpack) then
				ply:StopSound("jetpack_ignition")
				ply:StopSound("jetpack_flame")
				ply:StopSound("jetpack_extinct")
				ply:EmitSound("jetpack_extinct")
				ply:SetGravity(1)
				ply.powerarmor_t51_jetpack = false
				return
			end
		end
	end)
end