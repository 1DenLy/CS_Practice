using Microsoft.EntityFrameworkCore;
using pr3.Models;

namespace pr3.Data
{
    public class ProductContext : DbContext
    {
        public ProductContext(DbContextOptions<ProductContext> options) : base(options) { }
        public DbSet<Product> Products { get; set; }
    }
}
