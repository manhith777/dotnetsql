using System;
using System.Data.SqlClient;

class Program
{
    static void Main()
    {
        // Define the connection string here
        string connectionString = "Server=localhost;Database=StudentDB_New;Trusted_Connection=True;";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT StudentID, Name, Age FROM Students";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();

                Console.WriteLine("Student Records:");
                while (reader.Read())
                {
                    Console.WriteLine($"ID: {reader["StudentID"]}, Name: {reader["Name"]}, Age: {reader["Age"]}");
                }
            }
        }
    }
}
