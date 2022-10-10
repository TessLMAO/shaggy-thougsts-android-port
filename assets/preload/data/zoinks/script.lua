function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'replay'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'ded'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'wtf'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'end'); --put in mods/music/
end


