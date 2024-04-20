using GurNet.API.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GurNet.API.models
{
    public class User
    {
        [Key]
        public int user_id { get; set; }

        [Column(TypeName = "varchar(255)")]
        public string user_email { get; set; } = "";
        [Column(TypeName = "varchar(255)")]
        public string password { get; set; } = "";

        public StudentContext student { get; set; }
    }
}
