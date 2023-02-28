# Software Requirements Specification 

## 1. Introduction 
The HMSystem is a tool for booking and managing appointments. It also provides tools for receptionists so that they can keep track of appointments and report back to managers.

### 1.1 Purpose
This Software Requirement Specification (SRS) provides base information about HMSystem. It gives a comprehensive view of how the system is supposed to work and the expectations of the end users. 

This document is intended for both the stakeholders and the developers of the system. It also can be used in future as basis for project understanding for future system modifications.

### 1.2 Document Conventions
(тут должна быть табличка с сокращениями)

### 1.3 Intended Audience and Reading Suggestions
(?????????????????????????)

### 1.4 Product Scope
The HMSystem is designed to streamline hotel management processes, making them more efficient and reliable. Guests will benefit from the convenience of online booking, allowing them to select rooms according to their preferences and save time. The system will also replace the cumbersome task of managing large amounts of customer information, reducing the potential for errors during the reservation process. 

Guests will be able to check available rooms, make reservations, and pay for their room in advance or cancel their reservation. Receptionists will be able to create reservations and update booking details. Managers will be able to generate reports to aid in decision-making. With the HMSystem, hotels can provide a more efficient and reliable service to their guests.

### 1.5 References
(Пока что ничего не могу сказать по этому поводу)

## 2. Overall Description 
### 2.1 Product Perspective

![system architecture](/diagrams/system_architecture.png)

### 2.2 Product Functions

The main product functions are:
* new user registration;
* check available rooms;
* create/cancel booking;
* booking confirmation;
* email notificaton;
* payment;
* set room details;
* manage booking details;
* report generation.

### 2.3 User Classes and Characteristics

There are 3 end users of the system:
* Guest

Guests are vital part of the system. They have access to the information about the available rooms. They should be able to create reservation, pay for the room, confirm reservation and cancel it if it's necessary. Guests will have access to Booking Service. They should be able to use the web UI interface with ease.

* Receptionist

Receptionists can manage the booking details. They can search for the available rooms, manage reservations. Receptionists will have access to Booking Service. They should be able to use the web UI interface with ease.

* Manager

Managers have full access to the system. Managers are responsible for managing hotel resources and staff. They have access to The Booking Service, Report Service. They can view various reports and dashboards in order to make decisions about the romm price, bounuses for Guest, etc. Manager is required to have experience in hotel management and have basic knowledge about databases.  

### 2.4 Operating Enviroment
### 2.5 Design and Implementation Constraints

1. **Memory**: (дописать)
2. **Language Requirement**: (дописать)
3. **Budget Constraint**: (дописать)
4. **Implementation Constraint**: (дописать)
5. **Reliability Requirement**: (дописать)

### 2.6 User Documentation
### 2.7 Assumptions and Dependencies

## 3. External Enterface Requirements
### 3.1 User Interfaces

The user interface should be compatible with to any type of web-browser such as Mozilla Firefox, Google Chrome, etc.
### 3.2 Hardware Interfaces
### 3.3 Software Interfaces
### 3.4 Communications Interfaces

The system will use for communication HTTP/HTTPS and 
## 4. System Features
## Booking Management Service

### 4.1 Create Booking
#### 4.1.1 Description and Priority
#### 4.1.2 Stimulus/Response Sequences
#### 4.1.3 Functional Requirements

### 4.2 Cancel Booking
#### 4.2.1 Description and Priority
#### 4.2.2 Stimulus/Response Sequences
#### 4.2.3 Functional Requirements

### 4.3 Find available room
#### 4.3.1 Description and Priority
#### 4.3.2 Stimulus/Response Sequences
#### 4.3.3 Functional Requirements

### 4.4 Update booking details
#### 4.4.1 Description and Priority
#### 4.4.2 Stimulus/Response Sequences
#### 4.4.3 Functional Requirements

## Reporting Service 

### 4.5 Create report
#### 4.5.1 Description and Priority
#### 4.5.2 Stimulus/Response Sequences
#### 4.5.3 Functional Requirements

## 5. Other Nonfunctional Requirements
### 5.1 Perfomance Requirements
**NF-1:** Query results must return withib 4 seconds.
**NF-2:** Data in DB should be load within 2 seconds.
**NF-3:** UI must be load within 3 seconds.

### 5.2 Safety Requirements
### 5.3 Security Requirements
### 5.4 Software Quality Attributes
### 5.5 Business Rules

## 6. Other Requirements

## Appendix A: Glossary
## Appendix B: Data Flow Diagramms 
DFD Low Levels
![system architecture](/diagrams/dfd_level_2.png)
## Appendix C: Entity Relationship Diagramms 







