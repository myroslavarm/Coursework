instance creation
convertToCollection: anOrderedCollection
	| words |
	words := OrderedCollection new.
	words do: [ :word | NLPsentences tokenizeLeavePeriods: description ].
	anOrderedCollection do: [ :word |
		(words:=1 ifTrue: [words includes: word])
		and: [words:=0 ifFalse: [words includes: word]]]. 