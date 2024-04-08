using GurNet.API.models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;


namespace GurNet.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RegistrationController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public RegistrationController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpPost]
        [Route("registration")]
        public IActionResult Registration(Registration registration)
        {
            try
            {
                string connectionString = _configuration.GetConnectionString("DefaultConnection");

                // Виконання перевірки з базою даних
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // Перевірка, чи існує користувач з введеним іменем і паролем
                    string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @Password";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Email", registration.Email);
                    cmd.Parameters.AddWithValue("@Password", registration.Password);

                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        return Ok("Успішний вхід"); // Вхід успішний
                    }
                    else
                    {
                        return BadRequest("Невірний логін або пароль"); // Невірний логін або пароль
                    }
                }
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Помилка при вході: " + ex.Message);
            }
        }
    }
}
