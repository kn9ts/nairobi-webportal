var today = new Date();
/**
 * Populate days of week
 */
var days = new Array();
days[0] = "Sun";
days[1] = "Mon";
days[2] = "Tue";
days[3] = "Wed";
days[4] = "Thu";
days[5] = "Fri";
days[6] = "Sat";

var div_wdays = document.getElementById("div_wdays");

for (var i = 0; i < days.length; i++) {
    var dspan = document.createElement("span");
    var wday = document.createTextNode("" + days[i]);
    dspan.appendChild(wday);
    div_wdays.appendChild(dspan);

}
//end Populate days of week 

/**
 *
 * start write name of month and year
 *
 *
 */
var div_navigation = document.getElementById("div_navigation");
var monName = getMonName(today.getMonth());
var year = today.getFullYear();

//var monNameYear = document.createTextNode(monName + " " +year);
var monNameYear = monName + " " + year;
var spanMonNameYear = document.createElement("span");
spanMonNameYear.setAttribute("id", "spanMonNameYear");
//spanMonNameYear.appendChild(monNameYear);
spanMonNameYear.innerHTML = monNameYear;
var backArrow = document.createElement("img");
backArrow.setAttribute("src", "kab_events/images/monthBackward_normal.gif");
backArrow.style.cssFloat = "left";
backArrow.style.marginLeft = "10px";
backArrow.style.cursor = "pointer";
backArrow.onclick = function() {
    backOneMonth()
};
var nextArrow = document.createElement("img");
nextArrow.setAttribute("src", "kab_events/images/monthForward_normal.gif");
nextArrow.style.cssFloat = "right";
nextArrow.style.marginRight = "10px";
nextArrow.style.cursor = "pointer";
nextArrow.onclick = function() {
    nextOneMonth()
};

div_navigation.appendChild(backArrow);
div_navigation.appendChild(spanMonNameYear);
div_navigation.appendChild(nextArrow);
//end write name of month and year 


/**
 *
 * Populate the days of the month div... For when the calendar initially loads.
 *
 */

var mday = today.getDate();
var wday = today.getDay();
var datetoday = mday;
var monthtoday = today.getMonth();
//alert("month today = " + monthtoday);
var yeartoday = today.getFullYear();
//alert("year today = " + yeartoday);

//alert(wday); //Fri Apr 18 2014 12:50:55 GMT +0300 (E.Africa Standard Time)
//Loop Determines what day of week is the 1st day of this month.
while (mday > 1) {
    wday = wday - 1;
    if (wday < 0) {
        wday = 6;
    }
    mday--;
    //alert("mday = "+mday+ " wday = "+wday);
}
//alert("On exit, mday = " + mday + " and wday = " + wday);
var initDate = today.toString();
initDate = initDate.split(" ");
var initMaxMonDays = getMonMaxDays(initDate[1]);
//alert(curMaxMonDays);
fillMonDays(wday, initMaxMonDays, monthtoday, yeartoday);

/************************************************** MY FUNCTIONS *******************************************************/
/**
 *  This is where we fill in the days of the month on the calendar
 *  wday = what day of week is the 1st of this month
 *  numDays = Number of days in this month
 *
 */

function fillMonDays(wday, numDays, monInd, yearInd) {
    //alert("wday = "+ wday);
    //alert("month index = " + monInd);
    var table = document.getElementById("tbl_mdays");
    //cleanup the table 1st
    while (table.firstChild) {
        table.removeChild(table.firstChild);
    }

    //start creating now
    var tblBody = document.createElement("tbody");
    for (var y = 1; y <= numDays; y++) {

        if (y == 1) {
            var row = document.createElement("tr");
            /*This loop fills in blanks for the beginning of the month if it doesn't start on a sunday*/
            for (var x = 0; x < wday; x++) {
                var blankcell = document.createElement("td");
                var blanktxt = document.createTextNode(" ");
                blankcell.appendChild(blanktxt);
                row.appendChild(blankcell);
            }
        }

        if (wday == 7) {
            wday = 0;
            var row = document.createElement("tr");

        }
        var cell = document.createElement("td");
        cellText = document.createTextNode("" + y);
        cell.appendChild(cellText);
        row.appendChild(cell);
        tblBody.appendChild(row);
        if (y == datetoday && monthtoday == monInd && yeartoday == yearInd) {
            //#FF9325
            cell.style.color = "red";
            cell.style.fontWeight = "900";
        }
        //table.appendChild(row);
        //alert("wday last is: " + wday);
        wday++;
    }
    table.appendChild(tblBody); //end fill of days of the month.
}

//end fillMonDays

/**
 *
 * Go Back One Month
 *
 */

function backOneMonth() {

    spanMonNameYear = document.getElementById("spanMonNameYear");
    var month_year = spanMonNameYear.innerHTML;
    //alert("month_year is: " + month_year);
    var myArray = month_year.split(" ");
    month = myArray[0];
    year = myArray[1];

    var monNum = getMonNum(month); //get the month that is current on the calendar so that u know which month to get Next
    //alert("Month num before adding 1 = "+ monNum);
    monNum = monNum + 1; //convert to 'human' number
    //alert(" The month reads: " + monNum);
    //after getting current month on calendar, we now move to the prev month
    var prevMonYr = getPrevMonth(monNum, year);
    prevMonYr = prevMonYr.split(" ");
    var prevMonth = prevMonYr[0];
    var prevYear = prevMonYr[1];
    //alert(" The prev month is: "+ prevMonth);
    //create a date for the prev month ... 1st of that month
    var prevDateStr = new Date(prevMonth + "/01/" + prevYear);
    prevDateStr = prevDateStr.toString();
    //alert("The prevDateStr is: " + prevDateStr);
    //convert the prevDateStr string to array so that we extract what we want
    prevDateArr = prevDateStr.split(" ");

    //extract 1day of month from array 
    var prevMonDayStr = prevDateArr[0];
    //alert(" prevMonDayStr == "+ prevMonDayStr);
    var prevMonDayIndex = getDayNum(prevMonDayStr);
    //alert("prevMonDayIndex = " + prevMonDayIndex);
    //get the number of days in the prev month 
    var maxMonDays = getMonMaxDays(prevDateArr[1]);
    //alert("Max days for prev month is: "+ maxMonDays);

    //1st change the month and year if necessary
    var prevMonStr = monAbbrToFull(prevDateArr[1]);
    var prevYrStr = prevMonYr[1];
    var prevMonPlusYr = prevMonStr + " " + prevYrStr;
    spanMonNameYear.innerHTML = prevMonPlusYr;

    //alert(" The month name to number is: " + monNum);
    var monInd = monNum - 2;
    //alert(" The month passed: " + monInd);
    //alert("monNum - 1 = " + monInd);
    var yearInd = year;

    //call fillMonDays with prevMonDayIndex and maxMonDays in the prev Month
    fillMonDays(prevMonDayIndex, maxMonDays, monInd, yearInd);

}

/**
 *
 * Go Forward One Month
 *
 */

function nextOneMonth() {

    spanMonNameYear = document.getElementById("spanMonNameYear");
    var month_year = spanMonNameYear.innerHTML;
    var myArray = month_year.split(" ");
    month = myArray[0];
    year = myArray[1];
    //alert(" The month reads: " + month);
    var monNum = getMonNum(month); //get the month that is current on the calendar so that u know which month to get Next
    //alert(" The month before ading 1: " + monNum);
    monNum = monNum + 1; //convert to 'human' number
    //alert(" The month after adding 1: " + monNum);
    //alert(" The month reads: " + monNum);
    //after getting current month on calendar, we now move to the prev month
    var nextMonYr = getNextMonth(monNum, year);
    nextMonYr = nextMonYr.split(" ");
    var nextMonth = nextMonYr[0];
    var nextYear = nextMonYr[1];
    //alert(" The prev month is: "+ nextMonth);
    //create a date for the prev month ... 1st of that month
    var nextDateStr = new Date(nextMonth + "/01/" + nextYear);
    nextDateStr = nextDateStr.toString();
    //alert("The nextDateStr is: " + nextDateStr);
    //convert the nextDateStr string to array so that we extract what we want
    nextDateArr = nextDateStr.split(" ");

    //extract 1day of month from array 
    var nextMonDayStr = nextDateArr[0];
    //alert(" nextMonDayStr == "+ nextMonDayStr);
    var nextMonDayIndex = getDayNum(nextMonDayStr);
    //alert("nextMonDayIndex = " + nextMonDayIndex);
    //get the number of days in the prev month 
    var maxMonDays = getMonMaxDays(nextDateArr[1]);
    //alert("Max days for prev month is: "+ maxMonDays);

    //1st change the month and year if necessary
    var nextMonStr = monAbbrToFull(nextDateArr[1]);
    var nextYrStr = nextMonYr[1];
    var nextMonPlusYr = nextMonStr + " " + nextYrStr;
    spanMonNameYear.innerHTML = nextMonPlusYr;

    var monInd = monNum;
    //alert(" The month passed: " + monInd);
    var yearInd = year;

    //call fillMonDays with nextMonDayIndex and maxMonDays in the prev Month
    fillMonDays(nextMonDayIndex, maxMonDays, monInd, yearInd);

}



/************************************ GENERAL FUNCTIONS TO SUPPORT FORWARD AND BACKWARD MOVEMENT **********************/

function getDayNum(dname) {
    switch (dname) {
        case "Mon":
            return 1;
            break;

        case "Tue":
            return 2;
            break;

        case "Wed":
            return 3;
            break;

        case "Thu":
            return 4;
            break;

        case "Fri":
            return 5;
            break;

        case "Sat":
            return 6;
            break;

        case "Sun":
            return 0;
            break;

        default:
            return -1;

    }

}

function getMonName(mnum) {
    var months = new Array();
    months[0] = "January";
    months[1] = "February";
    months[2] = "March";
    months[3] = "April";
    months[4] = "May";
    months[5] = "June";
    months[6] = "July";
    months[7] = "August";
    months[8] = "September";
    months[9] = "October";
    months[10] = "November";
    months[11] = "December";

    return months[mnum];
}

function getMonNum(mname) {

    switch (mname) {
        case "January":
            return 0;
            break;

        case "February":
            return 1;
            break;

        case "March":
            return 2;
            break;

        case "April":
            return 3;
            break;

        case "May":
            return 4;
            break;

        case "June":
            return 5;
            break;

        case "July":
            return 6;
            break;

        case "August":
            return 7;
            break;

        case "September":
            return 8;
            break;

        case "October":
            return 9;
            break;

        case "November":
            return 10;
            break;

        case "December":
            return 11;
            break;

        default:
            return -1;

    }
}

function getMonMaxDays(mname) {

    switch (mname) {
        case "Jan":
            return 31;
            break;

        case "Feb":
            return 28;
            break;

        case "Mar":
            return 31;
            break;

        case "Apr":
            return 30;
            break;

        case "May":
            return 31;
            break;

        case "Jun":
            return 30;
            break;

        case "Jul":
            return 31;
            break;

        case "Aug":
            return 31;
            break;

        case "Sep":
            return 30;
            break;

        case "Oct":
            return 31;
            break;

        case "Nov":
            return 30;
            break;

        case "Dec":
            return 31;
            break;

        default:
            return -1;

    }
}

function monAbbrToFull(abbr) {
    var fullName;
    if (abbr == "Jan") {
        fullName = "January";
    } else if (abbr == "Feb") {
        fullName = "February";
    } else if (abbr == "Mar") {
        fullName = "March";
    } else if (abbr == "Apr") {
        fullName = "April";
    } else if (abbr == "May") {
        fullName = "May";
    } else if (abbr == "Jun") {
        fullName = "June";
    } else if (abbr == "Jul") {
        fullName = "July";
    } else if (abbr == "Aug") {
        fullName = "August";
    } else if (abbr == "Sep") {
        fullName = "September";
    } else if (abbr == "Oct") {
        fullName = "October";
    } else if (abbr == "Nov") {
        fullName = "November";
    } else if (abbr == "Dec") {
        fullName = "December";
    }

    return fullName;

}

/*************************************GO BACK ONE MONTH SPECIFIC FUNCTIONS ***************************************/

function getPrevMonth(curmonth, curyear) {
    //alert("called with month: "+ curmonth);
    var prevMonth;
    var prevYear = curyear;
    if (curmonth == 1) {
        prevMonth = 12;
        prevYear = curyear - 1;
    } else if (curmonth == 2) {
        prevMonth = 1;
    } else if (curmonth == 3) {
        prevMonth = 2;
    } else if (curmonth == 4) {
        prevMonth = 3;
    } else if (curmonth == 5) {
        prevMonth = 4;
    } else if (curmonth == 6) {
        prevMonth = 5;
    } else if (curmonth == 7) {
        prevMonth = 6;
    } else if (curmonth == 8) {
        prevMonth = 7;
    } else if (curmonth == 9) {
        prevMonth = 8;
    } else if (curmonth == 10) {
        prevMonth = 9;
    } else if (curmonth == 11) {
        prevMonth = 10;
    } else if (curmonth == 12) {
        prevMonth = 11;
    }

    var prevMonYr = prevMonth + " " + prevYear;
    //alert("Returning: " +prevMonYr);
    return prevMonYr;

}

/*************************************GO FORWARD ONE MONTH SPECIFIC FUNCTIONS ***************************************/

function getNextMonth(curmonth, curyear) {
    //alert("called with month: "+ curmonth);
    var nextMonth;
    curyear = (Number)(curyear);
    var nextYear = curyear;
    //alert(typeof curyear);
    if (curmonth == 1) {
        nextMonth = 2;
    } else if (curmonth == 2) {
        nextMonth = 3;
    } else if (curmonth == 3) {
        nextMonth = 4;
    } else if (curmonth == 4) {
        nextMonth = 5;
    } else if (curmonth == 5) {
        nextMonth = 6;
    } else if (curmonth == 6) {
        nextMonth = 7;
    } else if (curmonth == 7) {
        nextMonth = 8;
    } else if (curmonth == 8) {
        nextMonth = 9;
    } else if (curmonth == 9) {
        nextMonth = 10;
    } else if (curmonth == 10) {
        nextMonth = 11;
    } else if (curmonth == 11) {
        nextMonth = 12;
    } else if (curmonth == 12) {
        nextMonth = 1;
        nextYear = curyear + 1;
        //alert("nextYear is: "+ nextYear);
    }

    var nextMonYr = nextMonth + " " + nextYear;
    //alert("Returning: " +nextMonYr);
    return nextMonYr;

}

$(document).ready(function() {

    //alert("DOM load complete.");
    //text vs val vs html
    //var myObject = $('#eventlist_container');
    /*var myObject = $('.imgdate');
			 myObject.css({"border":'1px solid cyan'});
		
		var textStr = myObject.text();
		alert("Text is : "+textStr);
		alert("Array length is: "+ textStr.split(" ").length);
		var txtArr = textStr.split(" ");

		//alert("Number of date objects = " + myObject.size()); 
		 
		 myObject = myObject.toArray(); 
		 //alert("size of one object: "+myObject[0].size());
		for(var x=0; x<txtArr.length; x++){
			if(txtArr[x] != ""){
				alert("Arr element: " + x + " is :" +txtArr[x]+ " --->type is " + typeof txtArr[x]);
			}
		}*/
    //var alldates = $("#alldates");
});