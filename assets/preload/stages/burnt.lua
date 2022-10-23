-- Works correctly on Fallout ONLY
-- Hud Stuff Gone
function onCreatePost()
	setProperty('scoreTxt.visible', false)
	setProperty("timeTxt.visible", false)
	setProperty("timeBarBG.visible", false)
	setProperty("timeBar.visible", false)
	setProperty("updateTime", false)
	setProperty("healthBar.visible", false)
	setProperty('healthBarBG.visible', false);
	setProperty('iconP1.visible', false);
	setProperty('iconP2.visible', false);
end

function onCreate()
	-- Flashback Stage Stuff
	-- Actual Stage itself is hardcoded
	makeLuaSprite('sky2', 'fallen-soldier/phase4/flashback/background', -600, -225);
	makeLuaSprite('backtrees2', 'fallen-soldier/phase4/flashback/backtrees', -625, -200);
	makeLuaSprite('ground2', 'fallen-soldier/phase4/flashback/ground', -700, -150);
	makeLuaSprite('buddies', 'fallen-soldier/phase4/flashback/buddies', -700, -150);

	setScrollFactor('sky2', 0.5, 0.5);
	setScrollFactor('backtrees2', 0.7, 0.7);
	setScrollFactor('ground2', 1.0, 1.0);	
	setScrollFactor('buddies', 1.0, 1.0);

	addLuaSprite('sky2', false);
	addLuaSprite('backtrees2', false);	
	addLuaSprite('ground2', false);
	addLuaSprite('buddies', true);
	
	setProperty('sky2.visible', false);	
	setProperty('backtrees2.visible', false);
	setProperty('ground2.visible', false);	
	setProperty('buddies.visible', false);
	-- I would've hardcoded this too but I don't really see the point since it's need-less complications
end 

-- Flashback Sequence in Fallout
function onBeatHit()
    if curBeat == 192 then
	setProperty('canFilter', true)
	
	setProperty('sky2.visible', true);	
	setProperty('backtrees2.visible', true);
	setProperty('ground2.visible', true);	
	setProperty('buddies.visible', true);
	end
    if curBeat == 256 then
	setProperty('canFilter', false)
	
	setProperty('sky2.visible', false);	
	setProperty('backtrees2.visible', false);
	setProperty('ground2.visible', false);	
	setProperty('buddies.visible', false);
	end
end