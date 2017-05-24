as yet unclassified
withDescription: aString 
	"Create course with description"
	| c |	
	c := Course new.
	c description: aString.
	^ c