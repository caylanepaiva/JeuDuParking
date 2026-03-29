Class {
	#name : #Vehicule,
	#superclass : #Object,
	#instVars : [
		'identifiant',
		'position',
		'taille',
		'id'
	],
	#category : #JeuDuParking
}

{ #category : #'instance creation' }
Vehicule class >> id: unId en: unePosition taille: uneTaille [
    ^ self new
        initialiserId: unId position: unePosition taille: uneTaille;
        yourself
]

{ #category : #accessing }
Vehicule >> casesOccupees [
	^ (1 to: taille) collect: [ :i |
		self estHorizontal
			ifTrue: [ (position x + i - 1) @ position y ]
			ifFalse: [ position x @ (position y + i - 1) ] ]
]

{ #category : #accessing }
Vehicule >> id [
    ^ id
]

{ #category : #accessing }
Vehicule >> id: unId [ 
	id := unId
]

{ #category : #initialization }
Vehicule >> initialiserId: unId position: unePosition taille: uneTaille [
    self initialize.
    id := unId.
    position := unePosition.
    taille := uneTaille
]

{ #category : #initialization }
Vehicule >> initialize [
    super initialize
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
