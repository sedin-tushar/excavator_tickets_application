# Sedin Excavator Ticket
This is a simple Rails application for managing Excavator Tickets. It allows users to create, view, delete Excavator Tickets.

# Prerequisites
Before running the application, ensure you have the following installed:

`Ruby (>= 2.7.4)
Rails (>= 7.0.6)
Bundler (>= 2.2.28)`


# Installation
Follow these steps to set up the application:

Clone the repository:

1. git clone https://github.com/sedin-tushar/sedin-excavator-ticket.git

2. cd sedin-excavator-ticket

3. bundle install

4.Database Setup

`rails db:create
rails db:migrate
rails db:seed`

5.Starting the Server
rails s
The application will be accessible at http://localhost:3000.



# Given JSON Format for Api Callback
'{"ContactCenter": "UPCA", "RequestNumber": "09252012-00001", "ReferenceRequestNumber": "", "VersionNumber": "0", "SequenceNumber": "2421", "RequestType": "Normal", "RequestAction": "Restake", "DateTimes": { "RequestTakenDateTime": "2011/07/02 23:09:38", "TransmissionDateTime": "", "LegalDateTime": "2011/07/08 07:00:00", "ResponseDueDateTime": "2011/07/13 23:59:59", "RestakeDate": "2011/07/21 00:00:00", "ExpirationDate": "2011/07/26 00:00:00", "LPMeetingAcceptDueDate": "", "OverheadBeginDate": "", "OverheadEndDate": "" }, "ServiceArea": { "PrimaryServiceAreaCode": { "SACode": "ZZGL103" }, "AdditionalServiceAreaCodes": { "SACode": [ "ZZL01", "ZZL02", "ZZL03" ] } }, "Excavator": { "CompanyName": "John Doe CONSTRUCTION", "Address": "555 Some RD", "City": "SOME PARK", "State": "ZZ", "Zip": "55555", "Type": "Excavator", "Contact": { "Name": "Johnny Doe", "Phone": "1115552345", "Email": "example@example.com" }, "FieldContact": { "Name": "Field Contact", "Phone": "1235557924", "Email": "example@example.com" }, "CrewOnsite": "true" }, "ExcavationInfo": { "TypeOfWork": "rpr man hole tops", "WorkDoneFor": "gpc", "ProjectDuration": "60 days", "ProjectStartDate": "2011/07/08 07:00:00", "Explosives": "No", "UndergroundOverhead": "Underground", "HorizontalBoring": "Road, Driveway, and Sidewalk", "Whitelined": "No", "LocateInstructions": "locate along the r/o/w on both sides of the rd - including the rd itself - from inter to inter", "Remarks": "Previous Request Number:05161-120-011\n\n\t\t\tPrevious Request Number:06044-254-020\n\n\t\t\tPrevious Request Number:06171-300-030", "DigsiteInfo": { "LookupBy": "MANUAL", "LocationType": "Multiple Address", "Subdivision": "", "AddressInfo": { "State": "ST", "County": "COUNTY", "Place": "PLACE", "Zip": "", "Address": { "AddressNum": [ "Address 1", "Address 2" ] }, "Street": { "Prefix": "", "Name": "Trinity", "Type": "Ave", "Suffix": "SW" } }, "NearStreet": { "State": "XX", "County": "SomeCounty", "Place": "City", "Prefix": "", "Name": "", "Type": "", "Suffix": "" }, "Intersection": { "ItoI": [{ "State": "XX", "County": "FULERTON", "Place": "NORCROSS", "Prefix": "", "Name": "London", "Type": "St", "Suffix": "SW" }, { "State": "ZZ", "County": "COUNTY", "Place": "ATLANTA", "Prefix": "", "Name": "Jefferson", "Type": "Ave", "Suffix": "SW" } ] }, "WellKnownText": "POLYGON((-81.13390268058475 32.07206917625161,-81.14660562247929 32.04064386441295,-81.08858407706913 32.02259853170128,-81.05322183341679 32.02434500961698,-81.05047525138554 32.042681017283066,-81.0319358226746 32.06537765335268,-81.01202310294804 32.078469305179404,-81.02850259513554 32.07963291684719,-81.07759774894413 32.07090546831167,-81.12154306144413 32.08806865844325,-81.13390268058475 32.07206917625161))" } } }'


# Curl command to invoke Ticket Creation POST request
 curl -X POST -H "Content-Type: application/json" -d  '{"ContactCenter": "UPCA", "RequestNumber": "09252012-00001", "ReferenceRequestNumber": "", "VersionNumber": "0", "SequenceNumber": "2421", "RequestType": "Normal", "RequestAction": "Restake", "DateTimes": { "RequestTakenDateTime": "2011/07/02 23:09:38", "TransmissionDateTime": "", "LegalDateTime": "2011/07/08 07:00:00", "ResponseDueDateTime": "2011/07/13 23:59:59", "RestakeDate": "2011/07/21 00:00:00", "ExpirationDate": "2011/07/26 00:00:00", "LPMeetingAcceptDueDate": "", "OverheadBeginDate": "", "OverheadEndDate": "" }, "ServiceArea": { "PrimaryServiceAreaCode": { "SACode": "ZZGL103" }, "AdditionalServiceAreaCodes": { "SACode": [ "ZZL01", "ZZL02", "ZZL03" ] } }, "Excavator": { "CompanyName": "John Doe CONSTRUCTION", "Address": "555 Some RD", "City": "SOME PARK", "State": "ZZ", "Zip": "55555", "Type": "Excavator", "Contact": { "Name": "Johnny Doe", "Phone": "1115552345", "Email": "example@example.com" }, "FieldContact": { "Name": "Field Contact", "Phone": "1235557924", "Email": "example@example.com" }, "CrewOnsite": "true" }, "ExcavationInfo": { "TypeOfWork": "rpr man hole tops", "WorkDoneFor": "gpc", "ProjectDuration": "60 days", "ProjectStartDate": "2011/07/08 07:00:00", "Explosives": "No", "UndergroundOverhead": "Underground", "HorizontalBoring": "Road, Driveway, and Sidewalk", "Whitelined": "No", "LocateInstructions": "locate along the r/o/w on both sides of the rd - including the rd itself - from inter to inter", "Remarks": "Previous Request Number:05161-120-011\n\n\t\t\tPrevious Request Number:06044-254-020\n\n\t\t\tPrevious Request Number:06171-300-030", "DigsiteInfo": { "LookupBy": "MANUAL", "LocationType": "Multiple Address", "Subdivision": "", "AddressInfo": { "State": "ST", "County": "COUNTY", "Place": "PLACE", "Zip": "", "Address": { "AddressNum": [ "Address 1", "Address 2" ] }, "Street": { "Prefix": "", "Name": "Trinity", "Type": "Ave", "Suffix": "SW" } }, "NearStreet": { "State": "XX", "County": "SomeCounty", "Place": "City", "Prefix": "", "Name": "", "Type": "", "Suffix": "" }, "Intersection": { "ItoI": [{ "State": "XX", "County": "FULERTON", "Place": "NORCROSS", "Prefix": "", "Name": "London", "Type": "St", "Suffix": "SW" }, { "State": "ZZ", "County": "COUNTY", "Place": "ATLANTA", "Prefix": "", "Name": "Jefferson", "Type": "Ave", "Suffix": "SW" } ] }, "WellKnownText": "POLYGON((-81.13390268058475 32.07206917625161,-81.14660562247929 32.04064386441295,-81.08858407706913 32.02259853170128,-81.05322183341679 32.02434500961698,-81.05047525138554 32.042681017283066,-81.0319358226746 32.06537765335268,-81.01202310294804 32.078469305179404,-81.02850259513554 32.07963291684719,-81.07759774894413 32.07090546831167,-81.12154306144413 32.08806865844325,-81.13390268058475 32.07206917625161))" } } }'  http://localhost:3000/api/tickets


