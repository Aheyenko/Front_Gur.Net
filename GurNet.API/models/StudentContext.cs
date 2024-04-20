using GurNet.API.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace GurNet.API.Models
{
    //markevjich
    public class StudentContext : DbContext
    {
        public StudentContext(DbContextOptions options) : base(options)
        {
        }
        public DbSet<Student> Students { get; set; }
    }
}