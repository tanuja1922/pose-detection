document.addEventListener('DOMContentLoaded', function () {
    const params = new URLSearchParams(window.location.search);
    const service = params.get('service');
    const date = params.get('date');
    const time = params.get('time');
    const totalBill = params.get('totalBill');

    document.getElementById('service').textContent = service;
    document.getElementById('date').textContent = date;
    document.getElementById('time').textContent = time;
    document.getElementById('totalBill').textContent = totalBill;
});
