using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Samochody.Classes
{
    internal class Car
    {
        public string Brand { get; set; }
        public string Model { get; set; }
        private int ProductionYear { get; set; }
        public double Speed { get; set; }


        public Car(string brand, string model, int productionYear)
        {
            Brand = brand;
            Model = model;
            ProductionYear = productionYear;
            Random rand = new Random();
            Speed = rand.Next(0, 200);
        }

        public Car(string brand, string model, int productionYear, double speed) : this(brand, model, productionYear)
        {
            
            Speed = speed;
        }

        public void SimulateDriving()
        {
                Console.WriteLine($"Samochód {Brand} {Model} porusza się z prędkością {Speed} km/h");
        }

        public string GetInfo()
        {
            return $"{Brand} {Model}, rok produkcji: {ProductionYear}, prędkość: {Speed} km/h";
        }

        ~Car()
        {
            Console.WriteLine($"Samochód {Brand} {Model} został sprzedany");
        }

    }
}
