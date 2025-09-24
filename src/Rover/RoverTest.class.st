Class {
	#name : 'RoverTest',
	#superclass : 'TestCase',
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'tests' }
RoverTest >> testInitialDirection [
	|r|
	r := Rover new.
	self assert: r direction equals: 'N'.
]

{ #category : 'tests' }
RoverTest >> testInitialPosition [ 
	|r|
	r:= Rover new.
	r x: 0.
	r y: 0.
	
	self assert: r x equals: 0.
	self assert: r y equals: 0.	
]

{ #category : 'tests' }
RoverTest >> testMoveMax [
	"the rover cannot pass the map 5x5. if pass, return"
	"initialize"
	|r|
	r := Rover new.
	r x: 4.
	r y: 4.
	r lookNorth.
	
	"action"
	r moveForward.
	
	"check"
	self assert: r x equals: 4.
	self assert: r y equals: 4.	
]

{ #category : 'tests' }
RoverTest >> testMoveMaxWithXYMax [ 
	"initialize a map 9x9"
	|r|
	r := Rover new.
	r x: 0.
	r y: 8.
	r lookNorth.
	
	"action"
	r moveForward.
	
	"check"
	self assert: r x equals: 0.
	self assert: r y equals: 8.	
]

{ #category : 'tests' }
RoverTest >> testMoving [ 
"test moving
initialize: the rover is at (2,2), North
action: the rover moves
check: the rover is at (2,3)"
	|r|
	r := Rover new.
	"initialize"
	r x: 2.
	r y: 2.
	r lookNorth.
	"action"
	r moveForward.
	"check"
	self assert: r x equals: 2.
	self assert: r y equals: 3.
	
	 
	
]

{ #category : 'tests' }
RoverTest >> testRoad [
	|r|
	r := Rover new.
	r x: 2.
	r y: 2.
	r lookNorth.
	r turnRight.
	r moveForward.
	r moveForward.
	
	self assert: r x equals: 4.
	self assert: r y equals: 2.
	self assert: r direction equals: 'E'.
]

{ #category : 'tests' }
RoverTest >> testRoadWithAStringIntroduction [
	|r|
	r := Rover new.
	r x: 0.
	r y: 0.
	r lookNorth.
	r moveString: 'MMRMLMM'.
	
	self assert: r x equals: 1.
	self assert: r y equals: 4.
	self assert: r direction equals: 'N'.
]

{ #category : 'tests' }
RoverTest >> testTurnLeft [
	|r|
	r := Rover new.
	r lookNorth.
	r turnLeft.
	
	self assert: r direction equals: 'W'.
	
]

{ #category : 'tests' }
RoverTest >> testTurnRight [
	|r|
	r := Rover new.
	r lookNorth.
	r turnRight.
	
	self assert: r direction equals: 'E'.
]

{ #category : 'tests' }
RoverTest >> testlookNorth [
	|r|
	r := Rover new.
	r lookNorth.
	
	self assert: r direction equals: 'N'.
	
]
