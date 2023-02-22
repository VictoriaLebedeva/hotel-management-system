|Item|Definition|Datatype|Charachter length|Acceptable values|Required
----|-----|--------|:-----------------:|:---------:|-----
Hotel| hotel unique identificator | varchar | 255 | **H1**: Resort hotel</br>**H2**: City hotel | yes
is_canceled | | boolean | 1 | **1**: Canceled </br>**0**: Not canceled | yes
lead_time |No of days that elapsed between entering date of booking into property management system and arrival date | integer | — | — | no
arrival_date_year |Year of arrival date | integer |  4 |> 2015 | yes
arrival_date_month | Month of arrival date (Jan - Dec) | char | 3 | Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec | yes
arrival_date_week_number | Week number of year for arrival date (1-53) | integer | — | >= 1, <= 53  | — 
arrival_date_day_of_month | Day of arrival date | integer | — | >=1, <= 31 | yes
stays_in_weekend_nights | No of weekend nights (Sat/Sun) | integer| — | >= 1, <= 53 | yes
stays_in_week_nights | No of week nights (Mon - Fri) the guest stayed or booked to stay at the hotel | integer| — | >= 1, <= 53 | yes
Adults | No of adults | integer | — | — | yes
Children | No of children | integer | — | — | no
Babies | No of babies | integer | — | — | no
meal | Type of meal booked. | char | 4 | **Undefined/SC**: no meal package;</br>**BB**: Bed & Breakfast;</br>**HB**: Half board (breakfast and one other meal – usually dinner); </br>**FB**: Full board (breakfast, lunch and dinner) | no
country | Country | varchar | 255 | — | no
market_segment | A group of people who share one or more common characteristics, lumped together for marketing purposes) | char | 2 | **TA**: Travel agents </br> **TO**: Tour operators | no
distribution_channel | A distribution channel is a chain of businesses or intermediaries through which a good or service passes until it reaches the final buyer or the end consumer. | char | 2 | **TA**: Travel agents </br> **TO**: Tour operators | no
is_repeated_guest | Value indicating if the booking name was from repeated guest| boolean | 1 | **1**: Yes </br> **0**: No | yes
previous_cancellations | Number of previous bookings that were cancelled by the customer prior to the current booking. | integer | — | — | no
previous_bookings_not_canceled | Number of previous bookings not cancelled by the customer prior to the current booking. | integer | — | — | no
reserved_room_type |  Code of room type reserved. Code is presented instead of designation for anonymity reasons. | ЭТОТ МОМЕНТ НУЖНО УТОЧНИТЬ
assigned_room_type | Code for the type of room assigned to the booking. Sometimes the assigned room type differs from the reserved room type due to hotel operation reasons (e.g. overbooking) or by customer request. Code is presented instead of designation for anonymity reasons. | ЭТОТ МОМЕНТ НУЖНО УТОЧНИТЬ
booking_changes | Number of changes/amendments made to the booking from the moment the booking was entered on the PMS until the moment of check-in or cancellation. | integer | — | — | no
deposit_type |Indication on if the customer made a deposit to guarantee the booking. | varchar | 15 | **No Deposit**: no deposit was made; </br>**Non Refund**: a deposit was made in the value of the total stay cost;</br>**Refundable**: a deposit was made with a value under the total cost of stay.
agent | ID of the travel agency that made the booking | varchar | 255 | — | no
company | ID of the company/entity that made the booking or responsible for paying the booking. | varchar | 255 | — | no
day_in_waiting_list | Number of days the booking was in the waiting list before it was confirmed to the customer. | integer | — | — | no
customer_type | Customer type. | varchar | 35 | **Contract**: when the booking has an allotment or other type of contract associated to it;</br>**Group**: when the booking is associated to a group;</br>**Transient** : when the booking is not part of a group or contract, and is not associated to other transient booking;</br>**Transient-party**: when the booking is transient, but is associated to at least other transient booking adr (average daily rate). | yes
required_car_parking_spaces | Number of car parking spaces required by the customer. | integer | — | — | no
total_of_special_requests | Number of special requests made by the customer (e.g. twin bed or high floor) | — | — | no
reservation_status | Reservation status. | varchar | 15 | **Canceled**: booking was canceled by the customer; </br> **Check-Out**: customer has checked in but already departed;</br>**No-Show**: customer did not check-in and did inform the hotel of the reason why | yes
reservation_status_date | Date at which the last status was set. This variable can be used in conjunction with the ReservationStatus to understand when was the booking canceled or when did the customer checked-out of the hotel | date | — | — | yes