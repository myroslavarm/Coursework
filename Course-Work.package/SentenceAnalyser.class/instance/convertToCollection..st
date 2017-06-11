instance creation
convertToCollection: anOrderedCollection
    | descriptionWords |
    descriptionWords := NLPsentences tokenizeLeavePeriods: description.
    ^ anOrderedCollection collect: [ :word |
         (descriptionWords includes: word)
              ifTrue: [ 1 ]
              ifFalse: [ 0 ] ].