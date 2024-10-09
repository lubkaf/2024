namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");

            List<Tuple<int, string>> listapar = new List<Tuple<int, string>> ();

            listapar.Add(Tuple.Create(1, "A"));


            foreach (var item in listapar)
            {
                Console.WriteLine(item);
            }
        }
    }
}
