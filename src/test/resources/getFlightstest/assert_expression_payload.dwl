%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "Name": "ER38sd",
    "price__c": 400,
    "origin__c": "MUA",
    "destination__c": "SFO",
    "planeType__c": "Boeing 737",
    "airlineName__c": "United",
    "emptySeats__c": 0
  },
  {
    "Name": "ER45if",
    "price__c": 345.99,
    "origin__c": "MUA",
    "destination__c": "LAX",
    "planeType__c": "Boeing 737",
    "airlineName__c": "United",
    "emptySeats__c": 52
  },
  {
    "Name": "ER45jd",
    "price__c": 346,
    "origin__c": "MUA",
    "destination__c": "LAX",
    "planeType__c": "Boeing 777",
    "airlineName__c": "United",
    "emptySeats__c": 12
  },
  {
    "Name": "ER0945",
    "price__c": 423,
    "origin__c": "MUA",
    "destination__c": "LAX",
    "planeType__c": "Boeing 707",
    "airlineName__c": "United",
    "emptySeats__c": 0
  },
  {
    "Name": "ER9fje",
    "price__c": 845,
    "origin__c": "MUA",
    "destination__c": "CLE",
    "planeType__c": "Boeing 727",
    "airlineName__c": "United",
    "emptySeats__c": 32
  },
  {
    "Name": "ER3kfd",
    "price__c": 245,
    "origin__c": "MUA",
    "destination__c": "CLE",
    "planeType__c": "Boeing 747",
    "airlineName__c": "United",
    "emptySeats__c": 13
  },
  {
    "Name": "ER39rk",
    "price__c": 945,
    "origin__c": "MUA",
    "destination__c": "SFO",
    "planeType__c": "Boeing 757",
    "airlineName__c": "United",
    "emptySeats__c": 54
  },
  {
    "Name": "ER39rj",
    "price__c": 954,
    "origin__c": "MUA",
    "destination__c": "SFO",
    "planeType__c": "Boeing 777",
    "airlineName__c": "United",
    "emptySeats__c": 23
  },
  {
    "Name": "ER95jf",
    "price__c": 234,
    "origin__c": "MUA",
    "destination__c": "PDF",
    "planeType__c": "Boeing 787",
    "airlineName__c": "United",
    "emptySeats__c": 23
  },
  {
    "Name": "ER49fd",
    "price__c": 853,
    "origin__c": "MUA",
    "destination__c": "PDX",
    "planeType__c": "Boeing 777",
    "airlineName__c": "United",
    "emptySeats__c": 0
  },
  {
    "Name": "ER95jf",
    "price__c": 483,
    "origin__c": "MUA",
    "destination__c": "PDX",
    "planeType__c": "Boeing 777",
    "airlineName__c": "United",
    "emptySeats__c": 95
  },
  {
    "Name": "ER04kf",
    "price__c": 532,
    "origin__c": "MUA",
    "destination__c": "PDX",
    "planeType__c": "Boeing 777",
    "airlineName__c": "United",
    "emptySeats__c": 30
  }
])