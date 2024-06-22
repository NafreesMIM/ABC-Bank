// UserController.cs

using Microsoft.AspNetCore.Mvc;

public class UserController : Controller
{
    public IActionResult Index()
    {
        // User dashboard logic
        return View();
    }

    // View account details action
    public IActionResult ViewAccountDetails()
    {
        // Logic to retrieve and display account details
        return View();
    }

    // Conduct transaction action
    public IActionResult ConductTransaction()
    {
        // Logic to conduct transactions
        return View();
    }
}
