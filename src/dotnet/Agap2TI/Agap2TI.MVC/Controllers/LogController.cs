using Agap2TI.MVC.Models;
using Agap2TI.MVC.Service;
using Agap2TI.MVC.Utils;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace Agap2TI.MVC.Controllers
{
    public class LogController : Controller
    {
        private readonly ILogService _service;

        public LogController(ILogService service)
        {
            _service = service;
        }
      
        public async Task<IActionResult> Index(string sortOrder, string currentFilter, string searchString, int? pageNumber)
        {
            var log = new Log { Type = "Info", Description = "Page List" };
            await Create(log);


            ViewData["CurrentSort"] = sortOrder;
            ViewData["DateSortParam"] = String.IsNullOrEmpty(sortOrder) ? "date" : "";
            ViewData["LogTypeSortParam"] = String.IsNullOrEmpty(sortOrder) ? "logType_desc" : "";
            ViewData["DescriptionSortParam"] = String.IsNullOrEmpty(sortOrder) ? "description_desc" : "";            

            if (searchString != null)
                pageNumber = 1;
            else
                searchString = currentFilter;

            ViewData["CurrentFilter"] = searchString;

            var logs = await _service.GetAll();

            if (!String.IsNullOrEmpty(searchString))
                logs = await Search(logs, searchString);
            else
                logs = await ListSortOrder(logs, sortOrder);

            int pageSize = 10;
            return View(await PaginatedList<Log>.CreateAsync(logs, pageNumber ?? 1, pageSize));
        }

        public async Task<IActionResult> Details(int id)
        {
            var log = new Log { Type = "Info", Description = "Page Details" };
            await Create(log);

            return View(await _service.GetById(id));
        }

        public ActionResult Create()
        {
            ViewBag.LogType = LogType();
            return View();
        }

       
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id, Date, Type, Description")] Log log)
        {
            if(!ModelState.IsValid) return View(log);

            _service.Add(log);

            return RedirectToAction(nameof(Index));
        }

        
        public async Task<IActionResult> Edit(int id)
        {
            ViewBag.LogType = LogType();
            return View(await _service.GetById(id));            
        }

       
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(int id, [Bind("Id, Date, Type, Description")] Log log)
        {
            if (id != log.Id) return NotFound();

            if(!ModelState.IsValid) return View(log);

            try
            {
                _service.Update(log);
            }
            catch (DbUpdateConcurrencyException)
            {
                throw;
            }

            return RedirectToAction(nameof(Index));
        }

        private List<SelectListItem> LogType()
        {
            List<SelectListItem> logs = new()
            {
                new SelectListItem { Value = "Error", Text = "Error"},
                new SelectListItem { Value = "Info", Text = "Info"},
                new SelectListItem { Value = "Warn", Text = "Warn"}
            };

            return logs;
        }

        private async Task<IEnumerable<Log>> ListSortOrder(IEnumerable<Log> logs, string sortOrder)
        {
            return logs = sortOrder switch
            {
                "date" => logs.OrderBy(l => l.Date),
                "logType_desc" => logs.OrderByDescending(l => l.Type),
                "description_desc" => logs.OrderByDescending(l => l.Description),
                _ => logs.OrderByDescending(l => l.Date),
            };
        }

        private async Task<IEnumerable<Log>> Search(IEnumerable<Log> logs, string search) 
            => logs.Where(l => l.Type.ToLower().Contains(search.ToLower()) || l.Description.ToLower().Contains(search.ToLower()));
    }
}
