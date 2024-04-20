using GurNet.API.models;
using GurNet.API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace GurNet.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly UserContext _context;
        public LoginController(UserContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<ActionResult<IEnumerable<User>>> Login(Login login)
        {
            var user = await _context.User.FirstAsync(u => u.user_email == login.Email, CancellationToken.None);
            if (user == null)
            {
                return NotFound();
            }
            if (user.password == login.Password)
            {
                return Ok("Успішний вхід"); // Вхід успішний
            }
            else
            {
                return BadRequest("Невірний логін або пароль"); // Невірний логін або пароль
            }
        }
    }
}