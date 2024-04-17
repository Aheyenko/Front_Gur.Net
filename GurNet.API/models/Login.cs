using System.ComponentModel.DataAnnotations;

namespace GurNet.API.models
{
    public class Login
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)] // Оголошення, що це поле містить пароль
        public string Password { get; set; }

    }
 
}

