
/*Admincontrolpanerl */

async function displayDatabaseData() {
    const dataDisplay = document.querySelector('#dataDisplay tbody');

    try {
        const SQL = await initSqlJs({
            locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.8.0/${file}`
        });

        const response = await fetch(`./advertisment_center.db`);
        const buffer = await response.arrayBuffer();
        const database = new SQL.Database(new Uint8Array(buffer));

        const results = database.exec(`SELECT admin_name, admin_password FROM admin_table;`);

        if (results.length > 0 && results[0].values.length > 0) {
            const values = results[0].values;
            let tableHTML = '';

            values.forEach(row => {
                tableHTML += `<tr><td>${row[0]}</td><td>${row[1]}</td></tr>`;
            });

            dataDisplay.innerHTML = tableHTML;
        } else {
            dataDisplay.innerHTML = '<tr><td colspan="2">No data found.</td></tr>';
        }

        database.close();

    } catch (error) {
        console.error('Error:', error);
        dataDisplay.innerHTML = `<tr><td colspan="2">Error: ${error.message}</td></tr>`;
    }
}

displayDatabaseData();


/*Adminlognin */
document.getElementById("adminLoginForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form from reloading the page
    
    // Get input values
    var email = document.getElementById("admin_emailid").value;
    var password = document.getElementById("admin_password").value;

    // Basic authentication check (replace with actual backend validation)
    if (email === "admin@email.com" && password === "admin123") {
        window.location.href = "./admincontrolpanel.html"; // Redirect to control panel
    } else {
        alert("Invalid login credentials!");
    }
});

function logout() {
    alert("Logging out...");
    window.location.href = "../index.html";
}
