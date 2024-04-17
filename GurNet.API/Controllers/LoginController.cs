using GurNet.API.models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace GurNet.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public LoginController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpPost]
        [Route("login")]
        public IActionResult Login(Login login)
        {
            try
            {
                string connectionString = _configuration.GetConnectionString("DefaultConnection");

                // Виконання перевірки з базою даних
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // Перевірка, чи існує користувач з введеним іменем і паролем
                    string query = "SELECT COUNT(*) FROM dbo.[User] WHERE user_email = @Email AND Password = @Password";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Email", login.Email);
                    cmd.Parameters.AddWithValue("@Password", login.Password);

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


