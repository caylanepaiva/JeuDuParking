Class {
	#name : #VehiculeHorizontal,
	#superclass : #Vehicule,
	#category : #JeuDuParking
}

{ #category : #initialization }
VehiculeHorizontal >> casesOccupees [
    ^ (0 to: taille - 1) collect: [ :i | (position x + i) @ position y ]
]
