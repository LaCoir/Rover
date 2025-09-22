Class {
	#name : 'Rover',
	#superclass : 'Object',
	#instVars : [
		'direction',
		'x',
		'y'
	],
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'accessing' }
Rover >> direction [
	^direction.
]

{ #category : 'initialization' }
Rover >> initialize [ 
	super initialize.
	direction:= 'N'.
]

{ #category : 'as yet unclassified' }
Rover >> lookNorth [
	direction := 'N'.
]

{ #category : 'as yet unclassified' }
Rover >> moveForward [
	direction = 'N'
		ifTrue: [ 
			y := y+1.
			y > 4
				ifTrue: [ 
					y := 4 ].
			^ self ].
		
			direction = 'E'
		ifTrue: [ 
			x := x +1.
			x > 4
				ifTrue: [ 
					x := 4 ].
			^ self ].
	
	self shouldBeImplemented.
]

{ #category : 'as yet unclassified' }
Rover >> moveString: aString [ [ 
	aString do: [ 
		:char | 
		char = $M 
			ifTrue:[
				self moveForward ].
		char = $R 
			ifTrue:[
				self turnRight ].
		char = $L 
			ifTrue:[
				self turnLeft ].
			].
		]
]

{ #category : 'as yet unclassified' }
Rover >> turnLeft [
	direction = 'N'
		ifTrue: [ 
			direction:= 'W'.
			^self ].
	self shouldBeImplemented.
]

{ #category : 'as yet unclassified' }
Rover >> turnRight [
	direction = 'N'
		ifTrue: [ 
			direction:= 'E'.
			^self ].
	self shouldBeImplemented.
]

{ #category : 'accessing' }
Rover >> x [
	^ x
]

{ #category : 'accessing - structure variables' }
Rover >> x: anInteger [ 
	x := anInteger.
]

{ #category : 'accessing' }
Rover >> y [
	^ y
]

{ #category : 'accessing - structure variables' }
Rover >> y: anInteger [ 
	y := anInteger .
]
