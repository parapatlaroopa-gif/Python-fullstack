const a = document.getElementById("totalIncome");
const b = document.getElementById("totalExpenses");
const c = document.getElementById("totalBalance");
const d = document.getElementById("form");
const e = document.getElementById("name");
const f = document.getElementById("amount");
const g = document.getElementById("transactionType");
const h = document.getElementById("transactionCategory");
const i = document.getElementById("list");
const j = document.getElementById("message");

let transactions = [];

// Get data from localStorage
let savedTransactions = localStorage.getItem("transactions");

if (savedTransactions) {
    transactions = JSON.parse(savedTransactions);
}

// Form submit
d.addEventListener("submit", addTransaction);


// Add Transaction
function addTransaction(event) {

    event.preventDefault();

    const name = e.value.trim();
    const amount = Number(f.value);
    const category = h.value;
    const type = g.value;

    // Validation
    if (name === "" || amount <= 0) {
        j.textContent = "Please enter valid name and amount";
        return;
    }

    // Create transaction
    const transaction = {
        id: Date.now(),
        name: name,
        amount: amount,
        category: category,
        type: type
    };

    // Add to array
    transactions.push(transaction);

    // Save data
    saveTransactions();

    // Display transactions
    renderTransactions();

    // Reset form
    d.reset();

    // Message
    j.textContent = "Transaction added successfully";
}


// Save transactions
function saveTransactions() {

    localStorage.setItem(
        "transactions",
        JSON.stringify(transactions)
    );
}


// Display transactions
function renderTransactions(transactionArray = transactions) {

    i.innerHTML = "";

    transactionArray.forEach(function(transaction) {

        const amountClass =
            transaction.type === "income"
                ? "income-amount"
                : "expense-amount";

        i.innerHTML += `
            <div class="transaction">

                <div class="transaction-info">
                    <h3>${transaction.name}</h3>
                    <p>${transaction.category}</p>
                </div>

                <div class="transaction-amount">
                    <span class="${amountClass}">
                        ₹${Math.abs(transaction.amount)}
                    </span>
                </div>

            </div>
        `;
    });

    calculateTotals();
}


// Calculate totals
function calculateTotals() {

    // Total Income
    const income = transactions
        .filter(function(transaction) {
            return transaction.type === "income";
        })
        .reduce(function(total, transaction) {
            return total + Number(transaction.amount);
        }, 0);


    // Total Expenses
    const expenses = transactions
        .filter(function(transaction) {
            return transaction.type === "expense";
        })
        .reduce(function(total, transaction) {
            return total + Number(transaction.amount);
        }, 0);


    // Balance
    const balance = income - expenses;


    // Display values
    a.textContent = Math.abs(income);
    b.textContent = Math.abs(expenses);
    c.textContent = Math.abs(balance);
}


// Show saved transactions when page loads
renderTransactions();