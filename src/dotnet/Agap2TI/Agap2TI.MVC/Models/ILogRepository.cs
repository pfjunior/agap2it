namespace Agap2TI.MVC.Models;

public interface ILogRepository
{
    Task<IEnumerable<Log>> GetAll();
    Task<Log> GetById(int id);
    Task<Log> GetByDescription(string description);

    void Add(Log log);
    void Update(Log log);
}
