using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zwierzęta.Classes
{

    enum Kind
    {
        mammal = 1,
        fish = 2,
        bird = 3,
        reptile = 4,
        amphibian = 5,      //płaz
    }
    internal class Animal
    {
        public string Name { get; set; }
        public Kind Kind { get; set; }
        public string Species { get; set; }
        public DateTime BirthDate { get; set; }
        public float RedemptionPrice { get; set; }
        public bool IsCarnivore { get; set; } = false;
        public bool IsHungry { get; set; }

        public Animal() 
        {
            Name = "Name name given";
            Kind = Kind.mammal;
            Species = string.Empty;
            BirthDate = DateTime.MinValue;
            RedemptionPrice = 0.0f;
            IsCarnivore = false;
            IsHungry = false;


        }
        public Animal(Kind kind, string species, string name)
        {
            Name = name;
            Kind = kind;
            Species = species;
        }
        public Animal(Kind kind, string species, string name, DateTime birthDate, float redemptionPrice, bool isCarnivore, bool isHungry) : this(kind, species, name)
        {
            BirthDate = birthDate;
            RedemptionPrice = redemptionPrice;
            IsCarnivore = isCarnivore;
            IsHungry = isHungry;
        }

        public string GetInfo()
        {
            string meat;
            if (IsCarnivore)
            {
                meat = "is Carnivore";
            }
            else
            {
                meat = "is not Carnivore";

            }
            return $"Animal {Name} is {Kind} from species {Species} {meat}, born {BirthDate.ToShortDateString}, with redemption price: {RedemptionPrice}, and (is hungry? {IsHungry})";
        }
    }
}
