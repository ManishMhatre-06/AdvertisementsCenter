
/*#Admincontrolpanerl */

/*diaplayAdminData */
async function displayDatabaseData() {
    const displayAdminData = document.querySelector('#displayAdminData tbody');

    try {
        const SQL = await initSqlJs({
            locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.8.0/${file}`
        });

        const response = await fetch(`../advertisment_center.db`);
        const buffer = await response.arrayBuffer();
        const database = new SQL.Database(new Uint8Array(buffer));

        const results = database.exec(`SELECT admin_id, admin_name, admin_password FROM admin_table;`);

        if (results.length > 0 && results[0].values.length > 0) {
            const values = results[0].values;
            let tableHTML = '';

            values.forEach(row => {
                tableHTML += `<tr><td>${row[0]}</td><td>${row[1]}</td><td>${row[2]}</td></tr>`;
            });

            displayAdminData.innerHTML = tableHTML;
        } else {
            displayAdminData.innerHTML = '<tr><td colspan="2">No data found.</td></tr>';
        }

        database.close();

    } catch (error) {
        console.error('Error:', error);
        displayAdminData.innerHTML = `<tr><td colspan="2">Error: ${error.message}</td></tr>`;
    }
}

displayDatabaseData();

/*displayBannerData */
async function displayDatabaseData() {
    const displayBannerData = document.querySelector('#displayBannerData tbody');

    try {
        const SQL = await initSqlJs({
            locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.8.0/${file}`
        });

        const response = await fetch(`../advertisment_center.db`);
        const buffer = await response.arrayBuffer();
        const database = new SQL.Database(new Uint8Array(buffer));

        const results = database.exec(`SELECT * FROM banner_table;`);

        if (results.length > 0 && results[0].values.length > 0) {
            const values = results[0].values;
            let tableHTML = '';

            values.forEach(row => {
                tableHTML += `<tr>
                <td>${row[0]}</td>
                <td>${row[1]}</td>
                <td>${row[2]}</td>
                <td>${row[3]}</td>
                <td>${row[4]}</td>
                </tr>`;
            });

            displayBannerData.innerHTML = tableHTML;
        } else {
            displayBannerData.innerHTML = '<tr><td colspan="2">No data found.</td></tr>';
        }

        database.close();

    } catch (error) {
        console.error('Error:', error);
        displayBannerData.innerHTML = `<tr><td colspan="2">Error: ${error.message}</td></tr>`;
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
