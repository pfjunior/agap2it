using Agap2TI.MVC.Models;
using Microsoft.EntityFrameworkCore;

namespace Agap2TI.MVC.Data.Repository;

public class LogRepository : ILogRepository
{
    private readonly Agap2TIContext _context;

    public LogRepository(Agap2TIContext context)
    {
        _context = context;
    }

    public async Task<IEnumerable<Log>> GetAll() => await _context.Logs.AsNoTracking().ToListAsync();

    public async Task<Log> GetById(int id) => await _context.Logs.FindAsync(id);
    public async Task<Log> GetByDescription(string description) => await _context.Logs.FindAsync(description);

    public void Add(Log log)
    {
        _context.Logs.Add(log);
        _context.SaveChanges();
    }

    public void Update(Log log)
    {
        _context.Logs.Update(log);
        _context.SaveChanges();
    }

    public void Dispose() => _context.Dispose();
}
