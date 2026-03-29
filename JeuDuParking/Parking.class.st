Class {
	#name : #Parking,
	#superclass : #Object,
	#instVars : [
		'largeur',
		'hauteur',
		'sortie',
		'vehicules'
	],
	#category : #JeuDuParking
}

{ #category : #'instance creation' }
Parking class >> largeur: uneLargeur hauteur: uneHauteur sortie: uneSortie [
    ^ self new
        initialiserLargeur: uneLargeur hauteur: uneHauteur sortie: uneSortie;
        yourself
]

{ #category : #accessing }
Parking >> ajouterVehicule: unVehicule [
	vehicules add: unVehicule
]

{ #category : #accessing }
Parking >> asString [
	"Retourne une représentation ASCII du parking."
	| flux |
	flux := String streamContents: [ :s |
		s nextPut: $+.
		1 to: largeur do: [ :x |
			s nextPut: $- ].
		s nextPut: $+.
		s cr.

		1 to: hauteur do: [ :y |
			s nextPut: $|.
			1 to: largeur do: [ :x |
				s nextPut: (self caractereA: x@y) ].
			s nextPut: $|.
			s cr ].

		s nextPut: $+.
		1 to: largeur do: [ :x |
			x = sortie x
				ifTrue: [ s nextPut: $= ]
				ifFalse: [ s nextPut: $- ] ].
		s nextPut: $+ ].
	^ flux
]

{ #category : #accessing }
Parking >> caractereA: unPoint [
	"Retourne le caractère à afficher pour une position du parking."
	| vehicule |
	vehicule := self vehiculeA: unPoint.
	^ vehicule
		ifNil: [ $. ]
		ifNotNil: [ vehicule id]
]

{ #category : #accessing }
Parking >> hauteur [
	^ hauteur
]

{ #category : #accessing }
Parking >> hauteur: uneHauteur [
	hauteur := uneHauteur
]

{ #category : #initialization }
Parking >> initialiserLargeur: uneLargeur hauteur: uneHauteur sortie: uneSortie [
    self initialize.
    largeur := uneLargeur.
    hauteur := uneHauteur.
    sortie := uneSortie
]

{ #category : #initialization }
Parking >> initialize [
	super initialize.
	vehicules := OrderedCollection new
]

{ #category : #accessing }
Parking >> largeur [
	^ largeur
]

{ #category : #accessing }
Parking >> largeur: uneLargeur [
	largeur := uneLargeur
]

{ #category : #accessing }
Parking >> sortie [
	^ sortie
]

{ #category : #accessing }
Parking >> sortie: uneSortie [
	sortie := uneSortie
]

{ #category : #accessing }
Parking >> vehiculeA: unPoint [
	"Retourne le véhicule qui occupe ce point, ou nil s'il n'y en a pas."
	^ vehicules
		detect: [ :unVehicule | unVehicule casesOccupees includes: unPoint ]
		ifNone: [ nil ]
]

{ #category : #accessing }
Parking >> vehicules [
	^ vehicules
]

{ #category : #accessing }
Parking >> vehicules: uneCollection [
	vehicules := uneCollection
]
