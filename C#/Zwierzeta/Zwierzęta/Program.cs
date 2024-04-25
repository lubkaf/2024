using System.Diagnostics.CodeAnalysis;
using Zwierzęta.Classes;

namespace Zwierzęta
{
    internal class Program
    {

        static void Main(string[] args)
        {
            Dictionary<Kind, List<Animal>> Zoo = new Dictionary<Kind, List<Animal>>();
            Zoo[Kind.mammal] = new List<Animal>();
            Zoo[Kind.bird] = new List<Animal>();
            Zoo[Kind.fish] = new List<Animal>();
            Zoo[Kind.reptile] = new List<Animal>();
            Zoo[Kind.amphibian] = new List<Animal>();
            while (true)
            {


                DisplayMenu();
                string choice = Console.ReadLine();

                switch (choice)
                {
                    case "1":
                        AddAnimal(Zoo);
                        break;
                    case "2":
                        Console.WriteLine();
                        DisplayAnimals(Zoo);
                        break;
                    case "3":
                        FeedAnimal(Zoo);
                        break;
                    case "4":
                        break;
                    case "5":
                        Environment.Exit(0);
                        break;

                }
                Console.ReadKey();
            }

        }

        private static void FeedAnimal(Dictionary<Kind, List<Animal>> zoo)
        {
            Console.WriteLine("Enter name and kind of animal you want to feed");
            string name = Console.ReadLine();
            Kind kind = ChooseKind();

            foreach(var animal in zoo[kind]) 
            { 
                if(animal.Name == name && animal.IsHungry )
                {
                    animal.IsHungry = false;
                    Console.WriteLine($"Nakarmiono zwierzę {animal.Name}");
                }
                else if(animal.Name == name && !animal.IsHungry)
                {
                    Console.WriteLine("zwierze nie jest głodne");
                }
                else
                {
                    Console.WriteLine("nie ma takiego zwierzęcia");
                }
            }           
        }

        private static void DisplayAnimals(Dictionary<Kind, List<Animal>> zoo)
        {
            foreach (var item in zoo.Keys)
            {
                foreach (var animal in zoo[item])
                {
                    Console.WriteLine("\n" + animal.GetInfo());
                }
            }
        }

        private static void AddAnimal(Dictionary<Kind, List<Animal>> Zoo)
        {
            Console.WriteLine("what is name of your animal");
            string name = Console.ReadLine();
            Console.WriteLine("select kind of your animal");
            Kind kind = ChooseKind();
            Console.WriteLine("What species is your animal:");
            string species = Console.ReadLine();

            Console.WriteLine("Do you wanna add more detalis?");
            Console.WriteLine("Y/N");

            bool choice = GetBoolean();

            if (!choice)
            {
                Zoo[kind].Add(new Animal(kind, species, name));
                Console.WriteLine("animal, with no details added to zoo");
            }
            else if (choice)
            {
                Console.WriteLine("Enter birth date of your animal");
                DateTime birthDate = GetDateTime();
                Console.WriteLine("Enter price of your animal");
                float price = GetFloat(0.0f, float.MaxValue);
                Console.WriteLine("Is your animal carnivore");
                Console.WriteLine("Y/N");
                bool isCarnivore = GetBoolean();
                Console.WriteLine("Is your animal hungry");
                Console.WriteLine("Y/N");
                bool isHungry = GetBoolean();
                Zoo[kind].Add(new Animal(kind, species, name, birthDate, price, isCarnivore, isHungry));
                Console.WriteLine("animal with more details added to zoo");
            }

        }

        private static float GetFloat(float min, float max)
        {

            Console.WriteLine($"Enter number between < {min} ; {max} >");
            float result;
            while (true)
            {
                if (float.TryParse(Console.ReadLine(), out result) && result >= min && result <= max)
                {
                    return result;
                }
                else
                {
                    Console.WriteLine("wrong format");
                }
            }
        }

        private static bool GetBoolean()
        {
            Console.WriteLine("Enter answer");
            while (true)
            {
                string choice = Console.ReadLine().ToLower();
                if (choice == "y")
                {
                    return true;
                }
                else if (choice == "n")
                {
                    return false;
                }
                else
                {
                    Console.WriteLine("Incorrect format of answer");
                }

            }

        }

        private static DateTime GetDateTime()
        {
            Console.WriteLine("enter date: 'year-month-day'");
            DateTime date;
            while (true)
            {
                if (DateTime.TryParse(Console.ReadLine(), out date))
                {
                    return date;
                }
                else
                {
                    Console.WriteLine("Incorrect format of date");
                }
            }
        }

        private static Kind ChooseKind()
        {
            Console.WriteLine("Enter Kind:");
            Console.Write("\n1) mammal\n2) fist\n3) bird\n4) reptile\n5) amphibian\n");
            int result = GetIntValue(1, 5);
            Kind kind = (Kind)result;

            return kind;
        }

        private static void DisplayMenu()
        {
            Console.Clear();
            Console.WriteLine("Hello in the Zoo Simulator");
            Console.WriteLine("To manage your zoo choose numbers:");
            Console.WriteLine("1) Add Animal");
            Console.WriteLine("2) Show all animals in the zoo");
            Console.WriteLine("3) feed the animal");
            Console.WriteLine("4) Sell animal");
            Console.WriteLine("5) Finish the program");
        }
        private static int GetIntValue(int min, int max)
        {
            Console.WriteLine($"Enter intiger number between < {min} ; {max} >");
            int result;
            while (true)
            {
                if (int.TryParse(Console.ReadLine(), out result) && result >= min && result <= max)
                {
                    return result;
                }
                else
                {
                    Console.WriteLine("wrong format");
                }
            }
        }
    }


}
