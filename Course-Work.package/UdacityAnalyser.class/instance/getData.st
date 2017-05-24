as yet unclassified
getData
   "Retrieve all course from Udacity API and return OrdredCollection of courses."
	^ STON fromString: (ZnClient new
		url: 'https://www.udacity.com/public-api/v0/courses';
		get;
		response) contents