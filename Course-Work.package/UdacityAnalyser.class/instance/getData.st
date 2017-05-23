private protocol
getData
	^ STON fromString: (ZnClient new
		url: 'https://www.udacity.com/public-api/v0/courses';
		get;
		response) contents