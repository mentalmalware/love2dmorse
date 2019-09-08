love.graphics.clear()


function love.load()

	button = love.graphics.newImage("resources/button.png")
	button_pressed = love.graphics.newImage("resources/button_pressed.png")
	-- x and y values are 0 in upper left corner
	-- window dimensions if left unchanged
	-- are 800x600px

end


function love.draw()

	love.graphics.print("Press B to morse. Esc quits the program.", 250, 50, 0, 1.15)

	-- draw the button centered from the middle
	if pressed == false then
		love.graphics.draw(button, 400, 300, 0, 1, 1, button:getWidth()/2, button:getHeight()/2) else
		love.graphics.draw(button_pressed, 400, 300, 0, 1, 1, button_pressed:getWidth()/2, button_pressed:getHeight()/2)
	end
end


sound = love.audio.newSource("resources/beep.mp3", "static") -- the "static" tells LÖVE to load the file into memory, good for short sound effects

-- this plays the sound
-- sound:play()


function love.update(dt)

	if love.keyboard.isDown('b') then
		sound:play() 
		pressed = true else
		sound:stop()
		pressed = false
	end

end


-- Make Esc quit the program
function love.keyreleased(key)

	if key == 'escape' then
		love.event.quit()
	end

end


