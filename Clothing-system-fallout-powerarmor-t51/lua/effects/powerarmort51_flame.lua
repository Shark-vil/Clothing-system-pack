function EFFECT:Init(data)
	local ply = data:GetEntity()
	local propeller1_pos = ply:GetAttachment(ply:LookupAttachment("Jetpack_L1"))
	if (propeller1_pos == nil) then return end
	propeller1_pos = propeller1_pos.Pos
	
	local propeller2_pos = ply:GetAttachment(ply:LookupAttachment("Jetpack_R1"))
	propeller2_pos = propeller2_pos.Pos
	local propeller3_pos = ply:GetAttachment(ply:LookupAttachment("Jetpack_L2"))
	propeller3_pos = propeller3_pos.Pos
	local propeller4_pos = ply:GetAttachment(ply:LookupAttachment("Jetpack_R2"))
	propeller4_pos = propeller4_pos.Pos

	local emitter1 = ParticleEmitter(propeller1_pos, false)
	local emitter2 = ParticleEmitter(propeller2_pos, false)
	local emitter3 = ParticleEmitter(propeller3_pos, false)
	local emitter4 = ParticleEmitter(propeller4_pos, false)
	local particle = {}
	
	for j=0,4 do
		particle[1] = emitter1:Add("models/kuma96/powerarmor_t51/flame", propeller1_pos)
		particle[2] = emitter2:Add("models/kuma96/powerarmor_t51/flame", propeller2_pos)
		particle[3] = emitter3:Add("models/kuma96/powerarmor_t51/flame", propeller3_pos)
		particle[4] = emitter4:Add("models/kuma96/powerarmor_t51/flame", propeller4_pos)
		
		if (particle[1] and particle[2] and particle[3] and particle[4]) then
			for i=1,4 do
				particle[i]:SetDieTime(0.15)
				particle[i]:SetStartAlpha(255)
				particle[i]:SetEndAlpha(0)
				particle[i]:SetStartSize(math.Rand(0.4, 1.2))
				particle[i]:SetEndSize(math.random(7, 11))
				particle[i]:SetRoll(math.random(-10, 10))
				particle[i]:SetRollDelta(math.random(-10, 10))
				particle[i]:SetCollide(true)
			end
		end
	end
	
	for j=0,1 do
		particle[1] = emitter1:Add("particle/smokesprites_000" .. math.random(1, 9), propeller1_pos)
		particle[2] = emitter2:Add("particle/smokesprites_000" .. math.random(1, 9), propeller2_pos)
		particle[3] = emitter3:Add("particle/smokesprites_000" .. math.random(1, 9), propeller3_pos)
		particle[4] = emitter4:Add("particle/smokesprites_000" .. math.random(1, 9), propeller4_pos)
		
		if (particle[1] and particle[2] and particle[3] and particle[4]) then
			for i=1,4 do
				particle[i]:SetDieTime(0.16)
				particle[i]:SetStartAlpha(255)
				particle[i]:SetEndAlpha(0)
				particle[i]:SetStartSize(math.Rand(0.05, 0.15))
				particle[i]:SetEndSize(math.random(8, 12))
				particle[i]:SetRoll(math.random(-10, 10))
				particle[i]:SetRollDelta(math.random(-10, 10))
				particle[i]:SetCollide(true)
				particle[i]:SetColor(80, 80, 80)
			end
		end
	end
	
	emitter1:Finish()
	emitter2:Finish()
	emitter3:Finish()
	emitter4:Finish()
end
		
function EFFECT:Think()
	return false
end

function EFFECT:Render()
end