Class {
	#name : #Vehicule,
	#superclass : #Object,
	#instVars : [
		'identifiant',
		'position',
		'taille',
		'orientation'
	],
	#category : #JeuDuParking
}

{ #category : #accessing }
Vehicule >> casesOccupees [
	^ (1 to: taille) collect: [ :i |
		self estHorizontal
			ifTrue: [ (position x + i - 1) @ position y ]
			ifFalse: [ position x @ (position y + i - 1) ] ]
]

{ #category : #accessing }
Vehicule >> estHorizontal [
	^ orientation = #horizontal
]

{ #category : #accessing }
Vehicule >> estVertical [
	^ orientation = #vertical
]

{ #category : #accessing }
Vehicule >> identifiant [
	^ identifiant
]

{ #category : #accessing }
Vehicule >> identifiant: unIdentifiant [
	identifiant := unIdentifiant
]

{ #category : #accessing }
Vehicule >> orientation [
	^ orientation
]

{ #category : #accessing }
Vehicule >> orientation: uneOrientation [
	orientation := uneOrientation
]

{ #category : #accessing }
Vehicule >> position [
	^ position
]

{ #category : #accessing }
Vehicule >> position: unePosition [
	position := unePosition
]

{ #category : #accessing }
Vehicule >> taille [
	^ taille
]

{ #category : #accessing }
Vehicule >> taille: uneTaille [
	taille := uneTaille
]
