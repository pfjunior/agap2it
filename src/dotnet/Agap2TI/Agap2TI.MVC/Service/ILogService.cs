using Agap2TI.MVC.Models;

namespace Agap2TI.MVC.Service;

public interface ILogService
{
    Task<IEnumerable<Log>> GetAll();
    Task<Log> GetById(int id);
    Task<Log> GetByDescription(string description);

    void Add(Log log);
    void Update(Log log);
}
