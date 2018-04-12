         d3.csv("2015_data.csv", function(data){
              mData = data;
              var cols2and3 = data.map(function(d) {
                return {
                  resident_status: d.resident_status,
                  detail_age_type: d.detail_age_type
                }
              });
            });
         		//  // Loop through each state data value in the .csv file
         		//  for (var i = 0; i < mData.length; i++) {
            //
         		//  	// Grab State Name
         		//  	var dataState = mData[i].ss;
            //
         		//  	// Grab number of days for mental health variable
         		//  	var dataValue = mData[i].mhn;
            //
         		//  	// Find the corresponding state inside the data
         		//  	for (var j = 0; j < states.length; j++)  {
         		//  		var StateId = states[j].name;
            //
         		//  		if (dataState == StateId) {
            //
         		//  		// Copy the data value into the states array
         		//  		states[j].mhn = dataValue;
         		//  		// Stop looking through the states array
         		//  		break;
         		//  		}
         		//  	}
         		// }


        /*

        For each row outputs: ["Year", "Make", "Model", "Length"]
         */
