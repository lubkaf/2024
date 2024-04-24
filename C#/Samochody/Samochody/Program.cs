using Samochody.Classes;

namespace Samochody
{
    internal class Program
    {
        static void Main(string[] args)
        {


            List<Car> cars = new List<Car>();
            List<Car> raceList = new List<Car>(); 
            Dictionary<int,Car> carsDictionary = new Dictionary<int,Car>();

            
            while (true) 
            { 
            
                DisplayMenu();
                string choice = Console.ReadLine();

                
                switch (choice)
                {
                    
                    case "1":
                        AddCar(cars, carsDictionary);
                        break;
                    case "2":
                        DisplayCars(carsDictionary);
                        break;
                    case "3":
                        SetSpeed(carsDictionary);
                        break;
                    case "4":
                        raceList = ChoseCarsToRace(carsDictionary);
                        break;
                    case "5":
                        if (raceList.Count == 2)
                            CheckWinner(raceList);
                        else
                            Console.WriteLine("Nie podano samochodów które będą się ścigać :/");
                        break;
                    case "6":
                        SellCar(carsDictionary, cars);
                        break;
                    case "q":
                        Environment.Exit(0);
                        break;
                    default:
                        Console.WriteLine("podano nieprawidłową wartość");
                        break;
                }
                Console.WriteLine("naciśnij dowolny klawisz, aby przejść dalej");
                Console.ReadKey();
            }

        }

        private static void SellCar(Dictionary<int, Car> carsDictionary, List<Car> cars) 
        {
            DisplayCars(carsDictionary);
            int selledCar = ReadInt("Który samochód, chcesz sprzedać: ", 0, carsDictionary);
            Console.WriteLine($"Usunięto samochód {carsDictionary[selledCar].GetInfo()}");
            carsDictionary[selledCar] = null;
            carsDictionary.Remove(selledCar);

            GC.Collect();
        }

        private static void CheckWinner(List<Car> raceList)
        {
            raceList[0].SimulateDriving();
            raceList[1].SimulateDriving();
            Console.Write("\t\t");
            for(int i = 0; i < 10; i++)
            {
                Console.Write("-");
                Thread.Sleep(200);
            }
            Console.WriteLine();

            if (raceList[1].Speed > raceList[0].Speed)
            {
                Console.WriteLine($"Wygrał samochód {raceList[1].Brand} {raceList[1].Model}");
            }
            else if (raceList[0].Speed == raceList[1].Speed)
            {
                Console.WriteLine($"REMIS");
            }
            else
            {
                Console.WriteLine($"Wygrał samochód {raceList[0].Brand} {raceList[0].Model}");
            }

        }

        private static List<Car> ChoseCarsToRace(Dictionary<int, Car> carsDictionary)
        {
            List<Car> raceList = new List<Car>();
            for(int i = 1; raceList.Count < 2; i++)
            {
                int car = ReadInt($"Wybierz {i} samochód: ", 0, carsDictionary);
                raceList.Add(carsDictionary[car]);
            }
            Console.WriteLine("samochody biorące udział: ");
            Console.WriteLine($"{raceList[0].Model} {raceList[0].Brand}\tVS\t{raceList[1].Model} {raceList[1].Brand}");
            return raceList;


        }

        private static void SetSpeed(Dictionary<int, Car> carsDictionary)
        {
            int carNumber = ReadInt("Wybierz samochód, którego prędkośc zmieniasz", 0, carsDictionary);
            carsDictionary[carNumber].Speed = ReadInt("Ustaw prędkość samochodu (co najmniej 0)", 0);
        }

        private static void DisplayCars(Dictionary<int, Car> carsDictionary)
        {
            foreach(var car in carsDictionary)
            {
                Console.WriteLine($"{car.Key}) {car.Value.GetInfo()}");

            }
        }

        private static void AddCar(List<Car> cars, Dictionary<int, Car> carsDictionary)
        {
            Console.WriteLine("Podaj markę samochodu:");
            string brand = Console.ReadLine();

            Console.WriteLine("Podaj model samochodu:");
            string model = Console.ReadLine();
            
            int productionYear = ReadInt($"Podaj rok produkcji (1885 - {DateTime.Now.Year})", 1885);
            Car newCar = new Car(brand: brand, model: model, productionYear: productionYear);
            cars.Add(newCar);
            carsDictionary[cars.Count] = newCar;
        
        }

        private static int ReadInt(string prompt, int min, Dictionary<int, Car> carsDictionary = null)
        {
            Console.WriteLine(prompt);
            int result;
            while (true)
            {
                if(int.TryParse(Console.ReadLine(), out result) && result > min)
                {
                    if(carsDictionary == null || carsDictionary.ContainsKey(result))
                    {
                        return result;
                    }
                    else
                    {
                        Console.WriteLine("samochód nie istnieje w kolekcji");
                    }
                }
                else
                {
                    Console.WriteLine("Oj słabiutko");
                }
            }

        }

        private static void DisplayMenu()
        { 
            Console.Clear();
            Console.WriteLine("SYMULATOR SAMOCHODÓW");
            Console.WriteLine("MENU (1-6) lub 'q' aby zakończyć");
            Console.WriteLine("1) Stwórz samochód i dodaj go do kolekcji");
            Console.WriteLine("2) Wyświetl kolekcję samochodów");
            Console.WriteLine("3) Nadaj prędkość swoim samochodom");
            Console.WriteLine("4) Wybierz 2 samochody, które będą się ścigały");
            Console.WriteLine("5) Ścigaj się");
            Console.WriteLine("6) Sprzedaj samochód");
            Console.WriteLine("7) Sprawdz status konta");
        }
    }
}
