local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		luaSpriteMakeGraphic('transitionBlack', screenWidth * 2, screenHeight * 2, '000000');
		setLuaSpriteScrollFactor('transitionBlack', 0, 0);
		addLuaSprite('transitionBlack', true);
		setProperty('inCutscene', true);
		startVideo('flippyfuckingdies');
		allowCountdown = true;
		seenCutscene = true;
		return Function_Stop;
	end
	return Function_Continue;
end