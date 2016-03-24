' Library "gameEngine.brs"

sub Main()
	' ------- These two lines are required --------
	m.gameEngine = gameEngine_init(1280, 720, true) ' This initializes the game engine
	m.gameEngine.loadBitmap("bm_ball", "pkg:/sprites/example.png")
	m.gameEngine.addRoom("room_main", room_main())
	m.gameEngine.addRoom("room_example", room_example())
	m.gameEngine.changeRoom("room_main")

	' You should really only need m.gameEngine.Update() in your while loop. 
	' Everything else should be attached to objects.
	while true
		m.gameEngine.Update() ' This must be in the main while loop, it's what makes the game engine tick.
	end while
end sub