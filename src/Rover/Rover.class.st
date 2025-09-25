Class {
	#name : 'Rover',
	#superclass : 'Object',
	#instVars : [
		'direction',
		'x',
		'y',
		'xmax',
		'ymax'
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
	xmax:= 9.
	ymax:= 9.
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
			y := (y+1) min: (ymax - 1)].
	direction = 'S'
		ifTrue: [ 
			y := (y-1) max: 0].
	direction = 'E'
		ifTrue: [ 
			x := (x+1) min: (xmax - 1)].
	direction = 'W'
		ifTrue: [ 
			x := (x-1) max: 0].
]

{ #category : 'as yet unclassified' }
Rover >> moveString: aString [ 
	     aString do: [:char | 
        char = $M ifTrue: [ self moveForward ].
        char = $R ifTrue: [ self turnRight ].
        char = $L ifTrue: [ self turnLeft ].
    ].
]

{ #category : 'as yet unclassified' }
Rover >> turnLeft [ 
    direction = 'N'
        ifTrue: [ direction := 'W' ]
        ifFalse: [
            direction = 'W'
                ifTrue: [ direction := 'S' ]
                ifFalse: [
                    direction = 'S'
                        ifTrue: [ direction := 'E' ]
                        ifFalse: [ direction := 'N' ]
                ]
        ].

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
