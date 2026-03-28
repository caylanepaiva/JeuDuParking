Class {
	#name : #ParkingTest,
	#superclass : #TestCase,
	#instVars : [
		'parking',
		'vehicule'
	],
	#category : #'JeuDuParking-Tests'
}

{ #category : #running }
ParkingTest >> setUp [
	super setUp.
	parking := Parking new.
	parking largeur: 6.
	parking hauteur: 6.
	parking sortie: 3@6.

	vehicule := Vehicule new.
	vehicule identifiant: $R.
	vehicule position: 2@3.
	vehicule taille: 2.
	vehicule orientation: #vertical

]

{ #category : #tests }
ParkingTest >> testCaractereA [
	parking ajouterVehicule: vehicule.

	self assert: (parking caractereA: 2@3) equals: $R.
	self assert: (parking caractereA: 1@1) equals: $.

]

{ #category : #tests }
ParkingTest >> testVehiculeA [
	parking ajouterVehicule: vehicule.

	self assert: (parking vehiculeA: 2@3) equals: vehicule.
	self assert: (parking vehiculeA: 1@1) isNil


]
