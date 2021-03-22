"
I represent a person with a name and an email address. I'm usually
part of a contact book.
"
Class {
	#name : #Contact,
	#superclass : #Object,
	#instVars : [
		'fullname',
		'email'
	],
	#category : #'Mooc-ContactBook-Core'
}

{ #category : #'instance creation' }
Contact class >> newNamed: aNameString email: anEmailString [
	^ self new
		fullname: aNameString;
		email: anEmailString;
		yourself
]

{ #category : #accessing }
Contact >> email [
	^ email
]

{ #category : #accessing }
Contact >> email: aString [ 
	email := aString asLowercase 
]

{ #category : #accessing }
Contact >> fullname [
	^ fullname
]

{ #category : #accessing }
Contact >> fullname: aString [
	fullname := aString trimBoth
]

{ #category : #printing }
Contact >> printOn: aStream [
	aStream
		nextPutAll: self fullname;
		nextPutAll: ' <';
		nextPutAll: self email;
		nextPut: $>
]
