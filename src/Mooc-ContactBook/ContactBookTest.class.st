Class {
	#name : #ContactBookTest,
	#superclass : #TestCase,
	#category : #'Mooc-ContactBook-Tests'
}

{ #category : #tests }
ContactBookTest >> testAddContact [
	| book contact |
	book := ContactBook new.
	self assert: book contacts size equals: 0.
	contact := Contact
		newNamed: 'Serg Yaroshko'
		email: 's.jaroshko@gmail.com'.
	book addContact: contact.
	self assert: book contacts size equals: 1.
	self assert: (book contacts at: 1) equals: contact
]

{ #category : #tests }
ContactBookTest >> testDefaultCreation [
	self assert: ContactBook createDefault contacts size equals: 4
]

{ #category : #tests }
ContactBookTest >> testRemoveContact [
	| book contact nextContact |
	book := ContactBook createDefault .
	contact := book contacts at: 1.
	nextContact := book contacts at: 2.
	book removeContact: contact.
	self assert: book contacts size equals: 3.
	self assert: (book contacts at: 1) equals: nextContact
]
