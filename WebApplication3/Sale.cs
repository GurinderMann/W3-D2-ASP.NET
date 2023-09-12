using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class Sale
    {
      

        public double Avalible { get; set; }
    

        public Sale() { }

        public Sale( double avalible )
        {
           
            Avalible = avalible;
        }

    }
}