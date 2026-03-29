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
	parking := Parking  largeur: 6  hauteur: 6 sortie: 3@6.
	vehicule := VehiculeVertical id: $R en: 2@3 taille: 2.
	

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
