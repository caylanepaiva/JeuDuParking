Class {
	#name : #ParkingTest,
	#superclass : #TestCase,
	#instVars : [
		'parking'
	],
	#category : #'JeuDuParking-Tests'
}

{ #category : #running }
ParkingTest >> setUp [
	super setUp.
	parking := Parking  largeur: 6  hauteur: 6 sortie: 3@6.
	

]

{ #category : #tests }
ParkingTest >> testAsString [
	| rouge a b c |
	rouge := VehiculeVertical id: $R position: 4 @ 1 taille: 2.
	a := VehiculeHorizontal id: $A position: 1 @ 1 taille: 2.
	b := VehiculeVertical id: $B position: 1 @ 2 taille: 2.
	c := VehiculeHorizontal id: $C position: 2 @ 3 taille: 3.
	parking ajouterVehicule: rouge.
	parking ajouterVehicule: a.
	parking ajouterVehicule: b.
	parking ajouterVehicule: c.
	self
		assert: parking greaseString
		equals:
			'+------+
|AA.R..|
|B..R..|
|BCCC..|
|......|
|......|
|......|
+--=---+'
]

{ #category : #tests }
ParkingTest >> testCaractereA [
	| vehicule |
	vehicule := VehiculeVertical id: $R position: 2@3 taille: 2.
	parking ajouterVehicule: vehicule.

	self assert: (parking caractereA: 2@3) equals: $R.
	self assert: (parking caractereA: 1@1) equals: $.

]

{ #category : #tests }
ParkingTest >> testVehiculeA [
	| vehicule |
	vehicule := VehiculeVertical id: $R position: 2@3 taille: 2.
	parking ajouterVehicule: vehicule.

	self assert: (parking vehiculeA: 2@3) equals: vehicule.
	self assert: (parking vehiculeA: 1@1) isNil


]
