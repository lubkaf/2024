using static interfaces_classes_clinq.Program;

namespace interfaces_classes_clinq
{
    internal class Program
    {
        public interface ICar
        {
            void StartEngine();
            void Drive();
        }
        public abstract class Car : ICar
        { 
            public Car(string brand, string model, int year, string owner)
            {
                Brand = brand;
                Model = model;
                Year = year;
                Owner = owner;
            }
            public string Brand { get; set; }
            public string Model {  get; set; }
            public int Year { get; set; }
            public string Owner { get; set; }

            public void StartEngine()
            {
                Console.WriteLine($"{Brand} {Model} starts the engine");
            }
            public abstract void Drive();
            
            public override string ToString()
            {
                return $"{Brand} {Model} {Year} {Owner}";
            }

        }

        public class ElectricCar : Car
        { 
            public ElectricCar(string brand, string model, int year, string owner) : base(brand, model, year, owner) 
            
            {
            
            }
            public override void Drive()
            {
                Console.WriteLine("Electric car drives");
            }

           

        }

        public class GasolineCar : Car
        { 
            public GasolineCar(string brand, string model, int year, string owner) : base(brand, model, year, owner)
            {

            }
            public override void Drive()
            {
                Console.WriteLine("Gasoline car drives");
            }

           
        }

        static void Main(string[] args)
        {
            Car car1 = new ElectricCar("Daihatsu", "mini", 2022, "Cheng Yong");
            Car car2 = new GasolineCar("Mazda", "MX 5 miata", 1998, "Filip Adamczewski");
            car1.StartEngine();
            car2.StartEngine();
            car1.Drive();
            car2.Drive();

            List<Car> cars = new List<Car>();
            Console.WriteLine("Nasicnij dowolny klawisz aby przejsc dalej...");
            Console.ReadKey();
            Console.Clear();

            cars.Add(new GasolineCar("BMW", "X5", 2017, "Katarzyna Zielińska "));
            cars.Add(new ElectricCar("Tesla", "Model S", 2018, "Elon Musk"));
            cars.Add(new GasolineCar("Polonez", "ta", 1985, "Janusz Kowalski"));
            cars.Add(new GasolineCar("Ferrari", "458 Italia", 2012, "Niki Lauda"));
            cars.Add(new ElectricCar("BMW", "I8", 2024, "Hank Heimanns"));


            while (true)
            {
                Thread.Sleep(300);
                Console.WriteLine("Sortowanie po Właścicielu -- '1'");
                Console.WriteLine("Sortowanie po Roku wyprodukowania -- '2'");
                Console.WriteLine("Sortowanie po Marce -- '3'");
                Console.WriteLine("Sortowanie po Modelu -- '4'");
                string choice = Console.ReadLine();
                switch (choice) 
                {
                    case "1":
                        Console.WriteLine("\nSortowanie po właścicielu: ");
                        cars.Sort((a, b) => a.Owner.CompareTo(b.Owner));
                        foreach (Car car in cars)
                        {
                            Console.WriteLine(car.ToString());
                        }
                        break;
                    case "2":
                        Console.WriteLine("sortowanie po roku produkcji: ");
                        cars.Sort((carA, carB) => carB.Year.CompareTo(carA.Year));
                        foreach (Car car in cars)
                        {
                            Console.WriteLine(car.ToString());
                        }
                        break;
                    case "3":
                        Console.WriteLine("sortowanie po marce: ");
                        cars.Sort((a, b) => a.Brand.CompareTo(b.Brand));
                        foreach (Car car in cars)
                        {
                            Console.WriteLine(car.ToString());
                        }
                        break;  
                    case "4":
                        Console.WriteLine("sortowanie po modelu: ");
                        cars.Sort((a, b) => a.Model.CompareTo(b.Model));
                        foreach (Car car in cars)
                        {
                            Console.WriteLine(car.ToString());
                        }
                        break;
                    default:
                        Console.WriteLine("Niepoprawne dane...");
                        break;
                    

                }
                Console.WriteLine("nacisniej dowolny klawisz aby wrocic do menu");
                Console.ReadKey();
                Console.Clear();
            }
        }
    }
}
