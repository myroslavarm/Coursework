instance creation
fromDictionary: aDictionary
    | c |
    c:= self new.
    c title: (aDictionary at: 'title').
    c description: (aDictionary at: 'short_summary').
    ^ c