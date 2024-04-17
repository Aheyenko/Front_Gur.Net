using GurNet.API.models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace GurNet.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public StudentController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Student>>> GetUsers()
        {
            try
            {
                string connectionString = _configuration.GetConnectionString("DefaultConnection");
                List<Student> students = new ();

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    await con.OpenAsync();

                    string sqlQuery = "SELECT * FROM dbo.[Students]";
                    using (SqlCommand command = new SqlCommand(sqlQuery, con))
                    {
                        using (SqlDataReader reader = await command.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                Student student = new Student
                                {
                                    StudentId = reader.GetInt32(0),
                                    FirstName = reader.GetString(1),
                                    LastName = reader.GetString(2),
                                    MiddleName = reader.GetString(3),
                                    DormitoryNumber = reader.GetInt32(4),
                                    RoomNumber = reader.GetInt32(5),
                                    PhoneNumber = reader.GetString(6),
                                    PaidUntil = reader.GetDateTime(7),
                                    IdentificationCode = reader.GetString(8)
                                };

                                students.Add(student);
                            }
                        }
                    }
                }

                return Ok(students);
            }
            catch (Exception ex)
            {
                // Log the exception for debugging and monitoring
                Console.WriteLine($"Error retrieving users: {ex.Message}");
                return StatusCode(500, "Internal server error");
            }
        }
    }
}
