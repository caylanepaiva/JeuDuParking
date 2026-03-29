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
 


]

{ #category : #tests }
VehiculeTest >> testCasesOccupeesHorizontal [

	vehicule := VehiculeHorizontal id: $R position: 2@3 taille: 2.
	self assert: vehicule casesOccupees equals: (Array with: 2@3 with:3@3)

]

{ #category : #tests }
VehiculeTest >> testCasesOccupeesVertical [

	vehicule := VehiculeVertical id: $R position: 4@3 taille: 3.
	self assert: vehicule casesOccupees equals: (Array with: 4@3 with: 4@4 with: 4@5)


]
