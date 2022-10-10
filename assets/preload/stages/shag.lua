function onCreate()



	precacheImage('characters/shag-big')

	makeLuaSprite('sky', 'shag/sky', -400, 100)
	scaleObject('sky',1.2, 1)
	addLuaSprite('sky', false)


	makeLuaSprite('tree', 'shag/tree', 1550, 250)
	scaleObject('tree',1.1, 1.1)
	addLuaSprite('tree', false)


	makeLuaSprite('grund', 'shag/grund', -230, 1000)
	scaleObject('grund',1.2, 1)
	addLuaSprite('grund', true)


	makeLuaSprite('light', 'shag/light', -800, 100)
	scaleObject('light',1.2, 1)
	addLuaSprite('light', false)
	setBlendMode('lights','add')


	makeLuaSprite('bar1', 'bar',0, -300);
	setScrollFactor('bar1', 0, 0);
	scaleObject('bar1', 2300, 3);
	addLuaSprite('bar1', true);


	makeLuaSprite('bar2', 'bar',0, 640);
	setScrollFactor('bar2', 0, 0);
	scaleObject('bar2', 2300, 3);
	addLuaSprite('bar2', true);


	makeLuaSprite('blackshit', 'bar',-500, -300);
	setScrollFactor('blackshit', 0, 0);
	scaleObject('blackshit', 2300, 500);
	addLuaSprite('blackshit', true);


	setObjectCamera('bar1', 'hud')
	setObjectCamera('bar2', 'hud')
	setObjectCamera('blackshit', 'hud')


	makeAnimatedLuaSprite('i-stole-this-from-mandela', 'i-stole-this-from-mandela', -200, -350)
    scaleObject('i-stole-this-from-mandela', 3, 3)
    addAnimationByPrefix('i-stole-this-from-mandela', 'idle', 'idle', 16, true)
    objectPlayAnimation('i-stole-this-from-mandela', 'idle', true)
    setBlendMode('i-stole-this-from-mandela', 'lighten')
    setObjectCamera('i-stole-this-from-mandela', 'camHud')
    setProperty('i-stole-this-from-mandela.alpha', 0.5)
    addLuaSprite('i-stole-this-from-mandela', true)


    makeAnimatedLuaSprite('text', 'shag/text', 240, 100)
    addAnimationByPrefix('text', 'zoinks', 'zoinks', 16, true)
    objectPlayAnimation('text', 'zoinks', true)
    setObjectCamera('text', 'camHud')
    addLuaSprite('text', true)
    setProperty('text.alpha', 0)

end



function onCreatePost()

	noteTweenX('0', 4, 3000, 0.000001, 'linear');
	noteTweenX('1', 5, 3000, 0.000001, 'linear');
	noteTweenX('2', 6, 3000, 0.000001, 'linear');
	noteTweenX('3', 7, 3000, 0.000001, 'linear');

	noteTweenX('4', 0, 3000, 0.000001, 'linear');
	noteTweenX('5', 1, 3000, 0.000001, 'linear');
	noteTweenX('6', 2, 3000, 0.000001, 'linear');
	noteTweenX('7', 3, 3000, 0.000001, 'linear');

	noteTweenAlpha('poop0', 0, 0, 0.000001,  'linear')
	noteTweenAlpha('poop1', 1, 0, 0.000001,  'linear')
	noteTweenAlpha('poop2', 2, 0, 0.000001,  'linear')
	noteTweenAlpha('poop3', 3, 0, 0.000001,  'linear')

	setObjectOrder('grund', 3)
	--setObjectOrder('dad', 2)
	
	setProperty('gf.alpha', 0);

	triggerEvent('Camera Follow Pos',890,890)

	setProperty('scoreTxt.alpha',0)


	--bitch-below-----------------
	setProperty('timeBar.alpha',0)
	setProperty('timeTxt.alpha',0)
	------------------------------



	setProperty('iconP2.alpha',0)
	setProperty('iconP1.alpha',0)
	setProperty('healthBar.alpha',0)
	setProperty('healthBarBG.alpha',0)
	setProperty('healthBack.alpha',0)
	setProperty('healthBar.alpha',0)

	setProperty('health', 0.01);


end



function onEvent(name, value1, value2)

	if  name == "fuck-you-timebar" then


			setProperty('text.alpha', 0.9)
			setProperty('blackshit.alpha',1)
			
			setHits(1)

			setRatingPercent(0.1)

			setScore()

			setRatingString('You Suck!')

	
	end

	if  name == "intro" then

			cameraFlash('camHUD', 'FFFFFF', 0.3, false)

			setProperty('text.alpha', 0)

			noteTweenX('0', 4, 732, 0.000001, 'linear');
			noteTweenX('1', 5, 844, 0.000001, 'linear');
			noteTweenX('2', 6, 956, 0.000001, 'linear');
			noteTweenX('3', 7, 1068, 0.000001, 'linear');


			
			setProperty('blackshit.alpha',0)
			setProperty('i-stole-this-from-mandela.alpha',0)
			setProperty('healthBar.alpha',1)
			setProperty('healthBarBG.alpha',1)
			setProperty('healthBack.alpha',1)
			setProperty('healthBar.alpha',1)
			setProperty('iconP1.alpha',1)
			setProperty('iconP2.alpha',0)
			setProperty('scoreTxt.alpha',1)
			setProperty('timeBar.alpha',1)
			setProperty('timeTxt.alpha',1)

			doTweenAlpha('fuck-you-big-shag', 'dad', 0, 0.05, 'linear')

		
	end


	if  name == "shag-comes-in" then

			doTweenAlpha('bigshagy', 'dad', 0.5, 1, 'cubeIn')
			doTweenX('penis','dad', -200, 1, 'cubeOut')	
	end

	if  name == "outro" then

			cameraFlash('camHUD', 'FFFFFF', 0.3, false)
			setProperty('blackshit.alpha',1)
			setProperty('i-stole-this-from-mandela.alpha',0.5)
			setProperty('healthBar.alpha',0)
			setProperty('healthBarBG.alpha',0)
			setProperty('healthBack.alpha',0)
			setProperty('healthBar.alpha',0)
			setProperty('iconP1.alpha',0)
			setProperty('iconP2.alpha',0)
			setProperty('scoreTxt.alpha',0)
			setProperty('timeBar.alpha',0)
			setProperty('timeTxt.alpha',0)

			noteTweenAlpha('poop0', 0, 0, 0.000001,  'linear')
			noteTweenAlpha('poop1', 1, 0, 0.000001,  'linear')
			noteTweenAlpha('poop2', 2, 0, 0.000001,  'linear')
			noteTweenAlpha('poop3', 3, 0, 0.000001,  'linear')

			noteTweenAlpha('poop04', 4, 0, 0.000001,  'linear')
			noteTweenAlpha('poop15', 5, 0, 0.000001,  'linear')
			noteTweenAlpha('poop26', 6, 0, 0.000001,  'linear')
			noteTweenAlpha('poop37', 7, 0, 0.000001,  'linear')

			doTweenAlpha('outro', 'i-stole-this-from-mandela', 0, 5, 'linear')

	end

end





