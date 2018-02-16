using System.Linq;
using System;
namespace GestionMat.dao
{
    public class Dao
    {
        protected static gest_matEntities1 ctxt = new gest_matEntities1();
        public static void Update()
        {
            try
            {
                ctxt.SaveChanges();
            }
            catch (Exception e)
            {
                System.Console.WriteLine(e.Message);
                System.Console.ReadLine();
            }
        }

        public static string[] getEnumValues(string nomTable, string nomColonne)
        {
            //string enumDesc = ctxt.Database.SqlQuery<string>("desc {0} {1} ", new object[] { nomTable, nomColonne }).SingleOrDefault<string>();
            string enumDesc = ctxt.Database.SqlQuery<string>("select  COLUMN_TYPE from information_schema.columns where table_name = {0} AND COLUMN_NAME ={1} limit 1", new string[] { nomTable, nomColonne }).SingleOrDefault<string>();

            string enumValues = enumDesc.Substring(enumDesc.IndexOf("(") + 1, (enumDesc.LastIndexOf(")") - enumDesc.IndexOf("(") - 1));
            enumValues = enumValues.Replace("'", "");
            string[] valeurs = enumValues.Split(',');
            return valeurs;
        }
    }

}