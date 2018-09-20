# AGG_MAD3004_FinalProject
F2018 - MAD3004 Term Project - Lambton College - Payroll System

# Group #1 - Name: AGG
Antonio - merendaz@gmail.com

Giselle - gitavares@gmail.com

Gurjeet - gurjit.babrah@gmail.com

# What we did - A summary:
1 -	a) Abstract class Vehicle, with the children classes Car and Motorcycle.
	  b) Abstract class Employee, with the children PartTime, Intern and FullTime.
	  c) Abstract classe PartTime with the children commissionBasedPartTime and FixedBased PartTime

2 - Every one of these classes conforms to the protocol (IPrintable), directly or by inheritance

3 - Two objects of each one of the classes to test the output

4 - A class named Payroll, that conforms to the IPrintable Protocol, stores the employees data in one dictionary, calculates the total of the payroll and exports the output to a Text file.

5 - The Text file (payrollTotal.txt) generated by the class Payroll is saved on Documents Directory of the User's Computer.

6 - A class named Utils contains the extensions to Date (.year) and to Double (.currency and .percent) to optimize the data print process.

7 - The class Exceptions was created with Error Handling purposes. The error is thrown in the initializers of the classes FullTime, PartTime, CommissionBasedPartTime, FixedBasedPartTime and Intern.

8 - On the main.swift, the error is catched and the respective error message is given to the user.

9 - An Object with one error was created on the main.swift just for Error Handling Test purposes.

10 - A class named JSONCall to serialize .json files.

11 - Every class are internal, eg, only can be used inside the module (application).


# Sources:
- Access Control: https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html
- Dictionary: https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html
- To read and Write TXT file: https://stackoverflow.com/questions/45219896/mac-os-swift-writing-crash-log-to-text-file
- To read a JSON data: https://github.com/SwiftyJSON/SwiftyJSON and https://www.hackingwithswift.com/example-code/system/how-to-parse-json-using-jsonserialization

