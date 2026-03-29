Class {
	#name : #VehiculeVertical,
	#superclass : #Vehicule,
	#category : #JeuDuParking
}

{ #category : #acessing }
VehiculeVertical >> casesOccupees [
    ^ (0 to: taille - 1) collect: [ :i | position x @ (position y + i) ]
]
