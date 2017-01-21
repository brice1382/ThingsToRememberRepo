(function(oData) { 

var data = oData.event;
var fdata = new Array();

// get most recent human readable date and query
_forEach(data, function(d) { 

	// convert last epoch date for search
	var dateVal = d.query.id.slice(-1)[0];
	dateVal = dateVal ? dateVal.timestamp_usec : 0;
	var date = new Date(0); 
	date.setUTCSeconds(Math.ceil(dateVal/1000000)); 

	// push result to formated data
	fdata.push({'epoch': dateVal, 'date': date,'query' : d.query.query_text});
});

// sort date ascending
fdataSorted = _sortBy(fdata, 'epoch');

// clear console 
clear();

// print to console
_forEach(fdataSorted, function(d){ console.log(d.date, d.query); } );

});