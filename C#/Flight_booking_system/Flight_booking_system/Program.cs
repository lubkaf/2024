using static System.Runtime.InteropServices.JavaScript.JSType;
using System.Reflection;
using System;
using System.Globalization;
using System.Collections.Specialized;

namespace Flight_booking_system
{

    class Person
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public virtual string PersonInfo()                          //creating parent class to prevent doing simillar parameters in passenger and pilot
        {
            return ($"{FirstName} {LastName}");
        }
        public Person(string firstName, string lastName)
        {
            FirstName = firstName;
            LastName = lastName;
        }

    }
    class Pilot : Person  //pilot inherits from person value firstname and lastname you can see that in constructor
    {

        private string LicenseNumber { get; set; }


        public override string PersonInfo()
        {
            return ($"Pilot {FirstName} {LastName} with license number {LicenseNumber}");
        }
        public Pilot(string firstname, string lastname, string licensenumber) : base(firstname, lastname)
        {
            LicenseNumber = licensenumber;
        }



    }
    class Passenger : Person    //same as pilot
    {
        private string TicketType { get; set; }
        public override string PersonInfo()
        {
            return ($"Passenger {FirstName} {LastName} with {TicketType}");
        }
        public Passenger(string firstname, string lastname, string ticketType) : base(firstname, lastname)
        {
            TicketType = ticketType;
        }
    }
    class Plane
    {
        private string Model { get; set; }
        public int NumberOfSeats { get; set; }

        public string PlaneInfo()
        {
            return $"{Model} with capacity of {NumberOfSeats} ";
        }
        public Plane(string model, int number)
        {
            Model = model;
            NumberOfSeats = number;
        }

    }

    class Flight
    {
        private string FlightNumber { get; set; }
        private DateTime Start { get; set; }
        private DateTime End { get; set; }
        public Pilot Pilot { get; set; }
        public Plane Plane { get; set; }
        public List<Passenger> PassengersList { get; set; }


        public Flight(string flightnumber, DateTime start, DateTime end, Pilot pilot, Plane plane, List<Passenger> passengersList)
        {
            if (passengersList.Count > plane.NumberOfSeats)
            {
                throw new Exception("It is unable to create Flight, because there are too many passengers to fit them in plane");               //if number of passengers exceds number of seats in plane an exception is thrown
            }
            else
            {
                FlightNumber = flightnumber;
                Start = start;
                End = end;
                Pilot = pilot;
                Plane = plane;
                PassengersList = passengersList;
            }
            
        }


        //methods that display information about flight and passengers in the plane
        public void DisplayFlightInfo()
        {
            Console.WriteLine($"Flight number: {FlightNumber} has started at {Start} and ended at {End}. Main pilot was: {Pilot.PersonInfo()}, in plane {Plane.PlaneInfo()}");
        }
        public void DisplayPassengerList()
        {
            foreach(var passenger in PassengersList)
            {
                Console.WriteLine(passenger.PersonInfo());
            }
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            //creating list of pilots and passengers to easily create flight from existing data
            List<(int, Pilot)> pilots = new List<(int, Pilot)>();
            List<(int, Passenger)> passengers = new List<(int, Passenger)>();
          
            while (true) 
            {
                
           
                Console.WriteLine("Welcome in flight simulator");
                Console.WriteLine("Choose option (1-6) or 'quit' to leave the program");
                
                //simple menu
                Console.WriteLine("1) Create a Pilot");
                Console.WriteLine("2)Display all pilots");
                Console.WriteLine("3) Create a Passenger");
                Console.WriteLine("4)display all passangers");
                Console.WriteLine("5) Create a Plane");
                Console.WriteLine("6) Create a flight");

                string choice = Console.ReadLine();

                switch(choice)
                {
                    case "1":
                        string pilotFirstName = ReadString("Give the first name of the pilot");
                        string pilotLastName = ReadString("Give the last name of the pilot");
                        string pilotlicenseNumber = ReadString("Give number of the pilot's license");
                        pilots.Add((pilots.Count + 1,new Pilot(pilotFirstName, pilotLastName, pilotlicenseNumber)));        //adding pilot to the list of pilots (this is list of pairs)
                        break;
                    case "2":
                        DisplayPilots(pilots);
                        break;
                    case "3":
                        string passengerFirstName = ReadString("Give passenger's first name");
                        string passengerLastName = ReadString("Give passenger's last name");
                        string passengerTicket = ReadString("Write class of passengers ticket");
                        passengers.Add((passengers.Count + 1,new Passenger(passengerFirstName, passengerLastName, passengerTicket)));       
                        break;
                    case "4":
                        DisplayPassengers(passengers);
                        break;
                    case "5":
                        break;
                    case "quit":
                        Environment.Exit(0);
                        break;
                    default:
                        Console.WriteLine("Invalid value of choice");
                        break;
                }

                Console.WriteLine("press any button to return to menu");
                Console.ReadKey();
                Thread.Sleep(300);                                                  //this helps with the aesthetich of menu
                Console.Clear();
            }




        }

        private static void DisplayPassengers(List<(int,Passenger)> passengers)             //method that displays pasasengers in chosen list
        {
            Console.WriteLine("## LIST OF PILOTS ##");
            foreach (var passenger in passengers)
            {
                Console.WriteLine($"{passenger.Item1}) {passenger.Item2.PersonInfo()}");
            }
        }

        private static void DisplayPilots(List<(int,Pilot)> pilots)                        //same as above
        {
            foreach(var pilot in pilots)
            {
                Console.WriteLine($"##{pilot.Item1}) { pilot.Item2.PersonInfo()}");
            }
        }

        private static string ReadString(string prompt)                             //method that validates the entered data
        {
            Console.WriteLine(prompt);
            string input = Console.ReadLine();
            while (string.IsNullOrEmpty(input)) 
            {
                Console.WriteLine("Invalid input");
                input = Console.ReadLine();
            }
            return input;
        }


    }
}
