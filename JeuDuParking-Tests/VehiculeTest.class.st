Class {
	#name : #VehiculeTest,
	#superclass : #TestCase,
	#instVars : [
		'vehicule'
	],
	#category : #'JeuDuParking-Tests'
}

{ #category : #running }
VehiculeTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	vehicule := Vehicule new.
	vehicule identifiant: $R.


]

{ #category : #tests }
VehiculeTest >> testCasesOccupeesHorizontal [

	vehicule position: 2@3.
	vehicule taille: 2.
	vehicule orientation: #horizontal.

	self assert: vehicule casesOccupees equals: (Array with: 2@3 with:3@3)

]

{ #category : #tests }
VehiculeTest >> testCasesOccupeesVertical [
	vehicule position: 4@3.
	vehicule taille: 3.
	vehicule orientation: #horizontal.

	self assert: vehicule casesOccupees equals: (Array with: 4@3 with: 5@3 with: 6@3)


]
