converting
toOrderCollection: anOrderedCollection
	"Convert sentence to vector"
	| ordCol |
	ordCol := anOrderedCollection new.
	anOrderedCollection do: [ :word | ((description findString: word)>0)].

	 ^ NLPsentences tokenizeLeavePeriods: description 