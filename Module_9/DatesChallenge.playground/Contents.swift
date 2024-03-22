import UIKit

// 1. Convert a date and time represented in a String to a Date type in Swift. Write the code needed to convert dateString1 to a Date assigned to date1.
let dateString1 = "February 9, 2022 13:22"
var dateFormatter1 = DateFormatter()
dateFormatter1.dateFormat = "MMMM dd, yyyy HH:mm"
let date1 = dateFormatter1.date(from: dateString1)
print(date1)

// 2. Convert a date and time represented in a String to a Date type in Swift. Write the code needed to convert dateString2 to a Date assigned to date2.
let dateString2 = "Mar 03, 21 11:31 am"
var dateFormatter2 = DateFormatter()
dateFormatter2.dateFormat = "MMM dd, yy HH:mm a"
let date2 = dateFormatter2.date(from: dateString2)
print(date2)

// 3. Get the current date and time as a Date in Swift. Write the code to set currentDate to a Date that represents now.
let currentDate = Date(timeIntervalSinceNow: 0)
print(currentDate)

// 4. Convert a Date to a String in Swift. Write the code to create a String representing date3 with the format like: 2021-10-29 14:23:02 (typical database datetime format) and assign it to dateString3.
let date3 = Date(timeIntervalSince1970: 564019337)      // 564019337 seconds since the epoch: January 1, 1970 0:00
var dateFormatter3 = DateFormatter()
dateFormatter3.dateFormat = "yyyy-MM-dd HH:mm:ss"
let dateString3 = dateFormatter3.string(from: date3)
print(dateString3)
