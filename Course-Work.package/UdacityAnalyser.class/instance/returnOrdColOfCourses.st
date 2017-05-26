as yet unclassified
returnOrdColOfCourses
	^ (self getData at: 'courses') collect: [ :dictionary |
    | course |
    course := Course new.
    course ]