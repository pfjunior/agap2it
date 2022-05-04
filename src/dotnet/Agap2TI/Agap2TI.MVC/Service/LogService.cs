using Agap2TI.MVC.Models;

namespace Agap2TI.MVC.Service;

public class LogService : ILogService
{
    private readonly ILogRepository _logRepository;

    public LogService(ILogRepository logRepository)
    {
        _logRepository = logRepository;
    }   

    public async Task<IEnumerable<Log>> GetAll() => await _logRepository.GetAll();

    public async Task<Log> GetById(int id) => await _logRepository.GetById(id);
    public async Task<Log> GetByDescription(string description) => await _logRepository.GetByDescription(description);

    public void Add(Log log) => _logRepository.Add(log);
    public void Update(Log log) => _logRepository.Update(log);
}
