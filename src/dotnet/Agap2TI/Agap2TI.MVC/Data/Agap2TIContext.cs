using Agap2TI.MVC.Models;
using Microsoft.EntityFrameworkCore;

namespace Agap2TI.MVC.Data
{
    public class Agap2TIContext : DbContext
    {
        public Agap2TIContext(DbContextOptions<Agap2TIContext> options) : base(options) { }

        public DbSet<Log> Logs { get; set; }
    }
}
