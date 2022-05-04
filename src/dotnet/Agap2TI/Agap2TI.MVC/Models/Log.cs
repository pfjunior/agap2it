namespace Agap2TI.MVC.Models;

public class Log
{
    public int Id { get; set; }
    public DateTime Date { get; set; } = DateTime.Now;
    public string Type { get; set; } = null!;
    public string Description { get; set; } = null!;
}
