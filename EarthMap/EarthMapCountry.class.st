"
EarthMap > Display countries
"
Class {
	#name : 'EarthMapCountry',
	#superclass : 'Object',
	#instVars : [
		'svgPath',
		'name',
		'code'
	],
	#classInstVars : [
		'testStoneAgainstPaperIsWinning'
	],
	#category : 'EarthMap',
	#package : 'EarthMap'
}

{ #category : 'instance creation' }
EarthMapCountry >> asRSShape [
	^ RSSVGPath new svgPath: svgPath 

]

{ #category : 'accessing' }
EarthMapCountry >> code [

	^ code
]

{ #category : 'accessing' }
EarthMapCountry >> code: anObject [

	code := anObject
]

{ #category : 'instance creation' }
EarthMapCountry >> fromXML: aXMLElement [
	svgPath := aXMLElement attributeAt: 'd'.
	name := aXMLElement attributeAt: 'title'.
	code := aXMLElement attributeAt: 'id'.

]

{ #category : 'instance creation' }
EarthMapCountry >> inspectorShape [
	<inspectorPresentationOrder: 0 title: 'Shape'>
	
	| canvas |
	canvas := RSCanvas new.
	canvas add: self asRSShape.
	canvas @ RSCanvasController.
	^ SpRoassalInspectorPresenter new canvas: canvas; yourself

]

{ #category : 'accessing' }
EarthMapCountry >> name [

	^ name
]

{ #category : 'accessing' }
EarthMapCountry >> name: anObject [

	name := anObject
]

{ #category : 'printing' }
EarthMapCountry >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' ';
		nextPutAll: name
]

{ #category : 'accessing' }
EarthMapCountry >> svgPath [

	^ svgPath
]

{ #category : 'accessing' }
EarthMapCountry >> svgPath: anObject [

	svgPath := anObject
]
