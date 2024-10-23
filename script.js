document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('appointmentForm');
    form.addEventListener('submit', function (e) {
        e.preventDefault();

        // Get selected service and calculate the total bill
        const service = document.getElementById('service').value;
        let price = 0;

        switch (service) {
            case 'haircut':
                price = 20;
                break;
            case 'color':
                price = 50;
                break;
            case 'shave':
                price = 30;
                break;
        }

        // Redirect to confirmation page with the total bill
        const date = document.getElementById('date').value;
        const time = document.getElementById('time').value;
        const totalBill = price;

        window.location.href = `confirmation.html?service=${service}&date=${date}&time=${time}&totalBill=${totalBill}`;
    });
});
