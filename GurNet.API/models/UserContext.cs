using GurNet.API.Models;
using Microsoft.EntityFrameworkCore;

namespace GurNet.API.models
{
    public class UserContext : DbContext
    {
        public UserContext(DbContextOptions options) : base(options)
        {
        }
        public DbSet<User> User { get; set; }
    }
}
