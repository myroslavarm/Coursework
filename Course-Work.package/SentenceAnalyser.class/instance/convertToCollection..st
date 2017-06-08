instance creation
convertToCollection: anOrderedCollection
	| words |
	words := NLPsentences tokenizeLeavePeriods: description.
	anOrderedCollection collect: [ :word |
		(words:=1 ifTrue: [words includes: word])
		and: [words:=0 ifFalse: [words includes: word]]]. 