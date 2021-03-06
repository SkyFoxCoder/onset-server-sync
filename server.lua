-- Start of SetPlayerInputMode

AddFunctionExport("SetPlayerInputMode", function(player, InputMode)
	if((not IsValidPlayer(player)) or (INPUT_GAME < InputMode > INPUT_UI)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncInputModeChange", InputMode)
end)

-- End of SetPlayerInputMode

-- Start of SetPlayerFOV

local FOV_MINIMUM 	= 0
local FOV_MAXIMUM = 120

AddFunctionExport("SetPlayerFOV", function(player, fov)
	if((not IsValidPlayer(player)) or (FOV_MINIMUM < fov > FOV_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncFOVChange", fov)
end)

-- End of SetPlayerFOV

-- Start of SetPlayerWeather

local WEATHER_MINIMUM 	= 1
local WEATHER_MAXIMUM = 10

AddFunctionExport("SetPlayerWeather", function(player, weather)
	if((not IsValidPlayer(player)) or (WEATHER_MINIMUM < weather > WEATHER_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncWeatherChange", weather)
end)

-- End Of SetPlayerWeather

-- Start of StopPlayerCameraShake

AddFunctionExport("StopPlayerCameraShake", function(player, bImmediate)
	bImmediate = bImmediate or false

	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncCameraStopShake", bImmediate)
end)

-- End Of StopPlayerCameraShake

-- Start of DestroyPlayerSound

AddFunctionExport("DestroyPlayerSound", function(player, sound)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSoundDestroy", sound)
end)

-- End Of DestroyPlayerSound

-- Start of DestroyPlayerTextBox

AddFunctionExport("DestroyPlayerTextBox", function(player, textid)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncTextBoxDestroy", textid)
end)

-- End Of DestroyPlayerTextBox

-- Start of SetPlayerSunRadius

local SUN_RADIUS_MINIMUN = 0.0
local SUN_RADIUS_MAXIMUM = 4.0

AddFunctionExport("SetPlayerSunRadius", function(player, radius)
	if((not IsValidPlayer(player)) or (SUN_RADIUS_MINUM < radius > SUN_RADIUS_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSunRadiusChange", radius)
end)

-- End Of SetPlayerSunRadius

-- Start of SetPlayerChatLocation

AddFunctionExport("SetPlayerChatLocation", function(player, breadth, height)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncChatLocationChange", breadth, height)
end)

-- End Of SetPlayerChatLocation

-- Start of SetPlayerTime

local TIME_MINIMUN 	= 9
local TIME_MAXIMUM 	= 24

AddFunctionExport("SetPlayerTime", function(player, time)
	if((not IsValidPlayer(player)) or (TIME_MINIMUM < time > TIME_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncTimeChange", time)
end)

-- End Of SetPlayerTime

-- Start of SetPlayerSunShine

local SUN_SHINE_MINIMUN 	= 0.0
local SUN_SHINE_MAXIMUM 	= 15.0

AddFunctionExport("SetPlayerSunShine", function(player, shine)
	if((not IsValidPlayer(player)) or (SUN_SHINE_MINIMUM < shine > SUN_SHINE_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSunShineChange", shine)
end)

-- End Of SetPlayerSunShine

-- Start of TogglePlayerHealthHUD

AddFunctionExport("TogglePlayerHealthHUD", function(player, bToggle)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncHealthHUDToggle", bToggle)
end)

-- End Of TogglePlayerHealthHUD

-- Start of TogglePlayerMouseCursor

AddFunctionExport("TogglePlayerMouseCursor", function(player, bToggle)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncMouseCursorToggle", bToggle)
end)

-- End Of TogglePlayerMouseCursor

-- Start of SetPlayerSkySaturation

local SKY_SATURATION_MINIMUN 	= 0.0
local SKY_SATURATION_MAXIMUM 	= 4.0

AddFunctionExport("SetPlayerSkySaturation", function(player, saturation)
	if((not IsValidPlayer(player)) or (SKY_SATURATION_MINIMUM < saturation > SKY_SATURATION_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSkySaturationChange", saturation)
end)

-- End Of SetPlayerSkySaturation

-- Start of SetPlayerSkyIntesity

local SKY_LIGHT_INTENSITY_MINIMUN 	= 0.0
local SKY_LIGHT_INTENSITY_MAXIMUM 	= 4.0

AddFunctionExport("SetPlayerSkyIntesity", function(player, intensity)
	if((not IsValidPlayer(player)) or (SKY_LIGHT_INTENSITY_MINIMUM < intensity > SKY_LIGHT_INTENSITY_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSkyIntensityChange", intensity)
end)

-- End Of SetPlayerSkyIntesity

-- Start of SetPlayerStarsBrightness

local STARS_BRIGHTNESS_MINIMUN 	= 0.0
local STARS_BRIGHTNESS_MAXIMUM 	= 4.0

AddFunctionExport("SetPlayerStarsBrightness", function(player, brightness)
	if((not IsValidPlayer(player)) or (STARS_BRIGHTNESS_MINIMUM < brightness > STARS_BRIGHTNESS_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSkyBrightnessChange", brightness)
end)

-- End Of SetPlayerStarsBrightness

-- Start of ResetPlayerOceanColor

AddFunctionExport("ResetPlayerOceanColor", function(player)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncOceanColorReset")
end)

-- End Of ResetPlayerOceanColor

-- Start of SetPlayerFogDensity

local FOG_DENSITY_MINIMUN 	= 0.0
local FOG_DENSITY_MAXIMUM 	= 4.0

AddFunctionExport("SetPlayerFogDensity", function(player, density)
	if((not IsValidPlayer(player)) or (FOG_DENSITY_MINIMUM < density > FOG_DENSITY_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncFogDensityChange", density)
end)

-- End Of SetPlayerFogDensity

-- Start of SetPlayerSkyRotationSpeed

local SKY_ROTATION_SPEED_MINIMUN 	= 0.0
local SKY_ROTATION_SPEED_MAXIMUM 	= 4.0

AddFunctionExport("SetPlayerSkyRotationSpeed", function(player, speed)
	if((not IsValidPlayer(player)) or (SKY_ROTATION_SPEED_MINIMUM < speed > SKY_ROTATION_SPEED_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSkyRotationSpeedChange", speed)
end)

-- End Of SetPlayerSkyRotationSpeed

-- Start of SetPlayerSunLightIntensity

local SUN_LIST_INTENSITY_MINIMUN 	= 0.0
local SUN_LIST_INTENSITY_MAXIMUM 	= 4.0

AddFunctionExport("SetPlayerSunLightIntensity", function(player, intensity)
	if((not IsValidPlayer(player)) or (SUN_LIST_INTENSITY_MINIMUM < intensity > SUN_LIST_INTENSITY_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSunLightIntensityChange", intensity)
end)

-- End Of SetPlayerSunLightIntensity

-- Start of TogglePlayerChat

AddFunctionExport("TogglePlayerChat", function(player, bToggle)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncChatToggle", bToggle)
end)

-- End Of TogglePlayerChat

-- Start of DestroyPlayerWebUI

AddFunctionExport("DestroyPlayerWebUI", function(player, web)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncWebUIDestroy", web)
end)

-- End Of DestroyPlayerWebUI

-- Start of TogglePlayerNPCOutline

AddFunctionExport("TogglePlayerNPCOutline", function(player, npc, bToggle)
	bToggle = bToggle or true

	if((not IsValidPlayer(player)) or (not IsValidNPC(npc))) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncNPCOutlineChange", npc, bToggle)
end)

-- End Of TogglePlayerNPCOutline

-- Start of SetPlayerClothingPreset

AddFunctionExport("SetPlayerClothingPreset", function(player, forplayer, clothing_preset)
	if((not IsValidPlayer(player)) or (not IsValidPlayer(forplayer))) then
		return false
	end

	return CallRemoteEvent(forplayer, "OnSyncPlayerClothingPresetChange", player, clothing_preset)
end)

-- End Of SetPlayerClothingPreset

-- Start of SetPlayerNPCClothingPreset

AddFunctionExport("SetPlayerNPCClothingPreset", function(player, npc, clothing_preset)
	if((not IsValidPlayer(player)) or (not IsValidNPC(npc))) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncNPCClothingPresetChange", npc, clothing_preset)
end)

-- End Of SetPlayerNPCClothingPreset

-- Start of TogglePlayerOutline

AddFunctionExport("TogglePlayerOutline", function(player, forplayer, bToggle)
	bToggle = bToggle or true

	if((not IsValidPlayer(player)) or (not IsValidPlayer(forplayer))) then
		return false
	end

	return CallRemoteEvent(forplayer, "OnSyncPlayerOutlineChange", player, bToggle)
end)

-- End Of TogglePlayerOutline

-- Start of SetPlayerControlRotation

AddFunctionExport("SetPlayerControlRotation", function(player, pitch, yaw, roll)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncControlRotationChange", pitch, yaw, roll)
end)

-- End Of SetPlayerControlRotation

-- Start of TogglePlayerMoveInput

AddFunctionExport("TogglePlayerMoveInput", function(player, bToggle)
	bToggle = bToggle or true

	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncMoveInputChange", bToggle)
end)

-- End Of TogglePlayerMoveInput

-- Start of TogglePlayerLookInput

AddFunctionExport("TogglePlayerLookInput", function(player, bToggle)
	bToggle = bToggle or true

	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncLookInputChange", bToggle)
end)

-- End Of TogglePlayerLookInput

-- Start of StopPlayerCameraFade

AddFunctionExport("StopPlayerCameraFade", function(player)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncCameraStopFade")
end)

-- End Of StopPlayerCameraFade

-- Start of SetPlayerMoonShine

local MOON_SHINE_MINIMUN 	= 0.0
local MOON_SHINE_MAXIMUM 	= 3.0

AddFunctionExport("SetPlayerMoonShine", function(player, shine)
	if((not IsValidPlayer(player)) or (MOON_SHINE_MINIMUM < shine > MOON_SHINE_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncMoonShineChange", shine)
end)

-- End Of SetPlayerMoonShine

-- Start of SetPlayerNearClipPlane

AddFunctionExport("SetPlayerNearClipPlane", function(player, distance)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncNearClipPlaneChange", distance)
end)

-- End Of SetPlayerNearClipPlane

-- Start of SetPlayerSunAzimuth

AddFunctionExport("SetPlayerSunAzimuth", function(player, azimuth)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSunAzmithChange", azimuth)
end)

-- End Of SetPlayerSunAzimuth

-- Start of DestroyPlayerWaypoint

AddFunctionExport("DestroyPlayerWaypoint", function(player, waypointid)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncWaypointDestroy", waypointid)
end)

-- End Of DestroyPlayerWaypoint

-- Start of ReplacePlayerObjectModelMesh

AddFunctionExport("ReplacePlayerObjectModelMesh", function(player, ModelId, PathToMEsh)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncObjectModelMeshChange", ModelId, PathToMEsh)
end)

-- End Of ReplacePlayerObjectModelMesh

-- Start of SetPlayerMoonRadius

local MOON_RADIUS_MINIMUN 	= 0.0
local MOON_RADIUS_MAXIMUM 	= 1.0

AddFunctionExport("SetPlayerMoonRadius", function(player, radius)
	if((not IsValidPlayer(player)) or (MOON_RADIUS_MINIMUM < radius > MOON_RADIUS_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncMoonRadiusChange", radius)
end)

-- End Of SetPlayerMoonRadius

-- Start of SetPlayerCameraViewDistance

AddFunctionExport("SetPlayerCameraViewDistance", function(player, distance)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncCameraViewDistanceChange", distance)
end)

-- End Of SetPlayerCameraViewDistance

-- Start of SetPlayerObjectAnimatedTexture

AddFunctionExport("SetPlayerObjectAnimatedTexture", function(player, object, TextureFile, Rows, Columns, MaterialSlot)
	MaterialSlot = MaterialSlot or 0

	if(not IsValidPlayer(player) or not IsValidObject(object)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncObjectAnimatedTextureChange", object, TextureFile, Rows, Columns, MaterialSlot)
end)

-- End Of SetPlayerObjectAnimatedTexture

-- Start of SetPlayerMoonIntensity

local MOON_LIGHT_INTENSITY_MINIMUN 	= 0.0
local MOON_LIGHT_INTENSITY_MAXIMUM 	= 3.0

AddFunctionExport("SetPlayerMoonIntensity", function(player, intensity)
	if((not IsValidPlayer(player)) or (MOON_LIGHT_INTENSITY_MINIMUM < intensity > MOON_LIGHT_INTENSITY_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncMoonIntensityChange", intensity)
end)

-- End Of SetPlayerMoonIntensity

-- Start of ConnectPlayerToServer

AddFunctionExport("ConnectPlayerToServer", function(player, Address, Port, Password)
	Password = Password or nil

	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncServerChange", Address, Port, Password)
end)

-- End Of ConnectPlayerToServer

-- Start of TogglePlayerWeaponHUD

AddFunctionExport("TogglePlayerWeaponHUD", function(player, bToggle)
	bToggle = bToggle or false

	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncWeaponHUDToggle", bToggle)
end)

-- End Of TogglePlayerWeaponHUD

-- Start of LoadPlayerPak

AddFunctionExport("LoadPlayerPak", function(player, PakName, RootPath, ContentPath)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncLoadPak", PakName, RootPath, ContentPath)
end)

-- End Of LoadPlayerPak

-- Start of SetPlayerOceanWaterLevel

local OCEAN_WATER_LEVEL_MINIMUM = -200
local OCEAN_WATER_LEVEL_MAXIMUM = 10000

AddFunctionExport("SetPlayerOceanWaterLevel", function(player, Level, bIncludeSwimmingVolume)
	bIncludeSwimmingVolume = bIncludeSwimmingVolume or true

	if(not IsValidPlayer(player) or (OCEAN_WATER_LEVEL_MINIMUM < level > OCEAN_WATER_LEVEL_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncOceanWaterLevelChange", Level, bIncludeSwimmingVolume)
end)

-- End Of SetPlayerOceanWaterLevel

-- Start of TogglePlayerFirstPersonCamera

AddFunctionExport("TogglePlayerFirstPersonCamera", function(player, bToggle)
	bToggle = bToggle or true

	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncFirstPersonCameraToggle", bToggle)
end)

-- End Of TogglePlayerFirstPersonCamera

-- Start of SetPlayerRotationRate

local ROTATION_RATE_MINIMUM = -720.0
local ROTATION_RATE_MAXIMUM = 720.0

AddFunctionExport("SetPlayerRotationRate", function(player, RotationRate)
	if(not IsValidPlayer(player) or (ROTATION_RATE_MINIMUM < RotationRate > ROTATION_RATE_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncRotationRateChange", RotationRate)
end)

-- End Of SetPlayerRotationRate

-- Start of CreatePlayerFireworks

local FIRWORKS_MODEL_MINIMUM = 1
local FIRWORKS_MODEL_MAXIMUM = 13

AddFunctionExport("CreatePlayerFireworks", function(player, modelid, x, y, z, rx, ry, rz)
	rx = rx or 0.0
	ry = ry or 90.0
	rz = rz or 0.0

	if(not IsValidPlayer(player) or (FIRWORKS_MODEL_MINIMUM < modelid > FIRWORKS_MODEL_MAXIMUM)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncFireworksSpawn", modelid, x, y, z, rx, ry, rz)
end)

-- End Of CreatePlayerFireworks

-- Start of SetPlayerSoundPitch

AddFunctionExport("SetPlayerSoundPitch", function(player, sound, Pitch)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncSoundPitchUpdate", sound, Pitch)
end)

-- End Of SetPlayerSoundPitch

-- Start of SetPlayerControllerOrientedMovement

AddFunctionExport("SetPlayerControllerOrientedMovement", function(player, bToggle)
	bToggle = bToggle or true
	
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncControllerOrientedMovementChange", bToggle)
end)

-- End Of SetPlayerControllerOrientedMovement

-- Start of SetPlayerObjectEditorSpeed

AddFunctionExport("SetPlayerObjectEditorSpeed", function(player, speed)
	if(not IsValidPlayer(player)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncObjectEditorSpeedChange", speed)
end)

-- End Of SetPlayerObjectEditorSpeed

-- Start of TogglePlayerObjectHitEvents

AddFunctionExport("TogglePlayerObjectHitEvents", function(player, object, bToggle)
	bToggle = bToggle or true

	if(not IsValidPlayer(player) or not IsValidObject(object)) then
		return false
	end

	return CallRemoteEvent(player, "OnSyncObjectHitEventsToggle", object, bToggle)
end)

-- End Of TogglePlayerObjectHitEvents
