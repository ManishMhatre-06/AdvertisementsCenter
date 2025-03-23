
/*#Admincontrolpanerl */

function showTable(tableId) {
    const tables = document.querySelectorAll('.table-container');
    tables.forEach(table => {
        table.style.display = 'none';
    });
    document.getElementById(tableId).style.display = 'block';
}

/*diaplayAdminData */
async function displayAdminData() {
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

displayAdminData();

/*displayBannerData */
async function displayBannerData() {
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
                <td><img class="adminPanelBannerImg" src=".${row[2]}" alt="Billboard"></td>
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

displayBannerData();

/*displayOwnerData */
async function displayOwnerData() {
    const displayOwnerData = document.querySelector('#displayOwnerData tbody');

    try {
        const SQL = await initSqlJs({
            locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.8.0/${file}`
        });

        const response = await fetch(`../advertisment_center.db`);
        const buffer = await response.arrayBuffer();
        const database = new SQL.Database(new Uint8Array(buffer));

        const results = database.exec(`SELECT owner_id, owner_name, owner_emailid, owner_contactno, owner_address FROM owner_table;`);

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

            displayOwnerData.innerHTML = tableHTML;
        } else {
            displayOwnerData.innerHTML = '<tr><td colspan="2">No data found.</td></tr>';
        }

        database.close();

    } catch (error) {
        console.error('Error:', error);
        displayOwnerData.innerHTML = `<tr><td colspan="2">Error: ${error.message}</td></tr>`;
    }
}

displayOwnerData();

/*displayOwnerData */
async function displaySalesData() {
    const displaySalesData = document.querySelector('#displaySalesData tbody');

    try {
        const SQL = await initSqlJs({
            locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.8.0/${file}`
        });

        const response = await fetch(`../advertisment_center.db`);
        const buffer = await response.arrayBuffer();
        const database = new SQL.Database(new Uint8Array(buffer));

        const results = database.exec(`SELECT owner_id, owner_name, owner_emailid, owner_contactno, owner_address FROM owner_table;`);

        if (results.length > 0 && results[0].values.length > 0) {
            const values = results[0].values;
            let tableHTML = '';

            values.forEach(row => {
                tableHTML += `<tr>
                <td>${row[0]}</td>
                <td>${row[1]}</td>
                <td>${row[3]}</td>
                <td>${row[4]}</td>
                </tr>`;
            });

            displaySalesData.innerHTML = tableHTML;
        } else {
            displaySalesData.innerHTML = '<tr><td colspan="2">No data found.</td></tr>';
        }

        database.close();

    } catch (error) {
        console.error('Error:', error);
        displaySalesData.innerHTML = `<tr><td colspan="2">Error: ${error.message}</td></tr>`;
    }
}

displaySalesData();


/*Adminlognin */
document.getElementById("adminLoginForm").addEventListener("submit", async function(event) {
    event.preventDefault();
    
    var email = document.getElementById("admin_emailid").value;
    var password = document.getElementById("admin_password").value;
    
    // Admin Login authentication section
    try {
        console.log("Attempting to load database...");

        const SQL = await initSqlJs({
            locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.8.0/${file}`
        });

        const response = await fetch("../advertisment_center.db");
        if (!response.ok) throw new Error("Failed to load database file.");

        const buffer = await response.arrayBuffer();
        const database = new SQL.Database(new Uint8Array(buffer));

        console.log("Database loaded successfully.");

        const query = `SELECT * FROM admin_table WHERE admin_emailid = ? AND admin_password = ?;`;
        const stmt = database.prepare(query);
        stmt.bind([email, password]);

        if (stmt.step()) {
            console.log("Login successful, redirecting...");
            window.location.href = "./admincontrolpanel.html";
        } else {
            console.log("Login failed, no matching record found.");
            alert("Invalid email or password.");
        }

        stmt.free();
        database.close(); 

    } catch (error) {
        console.error("Error during login:", error);
        alert("An error occurred while trying to log in. Please try again.");
    }
});

function logout() {
    alert("Logging out...");
    window.location.href = "../index.html";
}
