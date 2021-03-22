"
I incapsulate an Ordered collection of Contact instances.
"
Class {
	#name : #ContactBook,
	#superclass : #Object,
	#instVars : [
		'contacts'
	],
	#category : #'Mooc-ContactBook-Core'
}

{ #category : #'instance creation' }
ContactBook class >> createDefault [
	^ self new
		addContact: (Contact newNamed: 'Damien Cassou' email: 'damien@cassou.me');
		addContact: (Contact newNamed: 'Marcus Denker' email: 'marcus.denker@inria.fr');
		addContact: (Contact newNamed: 'Tudor Girba' email: 'tudor@tudorgirba.com');
		addContact: (Contact newNamed: 'Clara Allende' email: 'clari.allende@gmail.com');
		yourself
]

{ #category : #operations }
ContactBook >> addContact: aContact [
	self contacts add: aContact
]

{ #category : #accessing }
ContactBook >> contacts [
	^ contacts ifNil: [ contacts := OrderedCollection new ]
]

{ #category : #operations }
ContactBook >> removeContact: aContact [
	self contacts remove: aContact
]
