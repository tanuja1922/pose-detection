// Function to check if Google Pay is available on the device
function isGooglePayAvailable() {
    return !!window.PaymentRequest && !!window.PaymentRequest.supportedPaymentMethods;
  }
  
  // Function to handle the payment button click
  function handlePaymentButtonClick() {
    if (isGooglePayAvailable()) {
      // Create a PaymentRequest object with Google Pay as a supported payment method
      const paymentRequest = new PaymentRequest(
        [
          {
            supportedMethods: 'https://google.com/pay',
            data: {
              merchantId: 'your-merchant-id', // Replace with your merchant ID
              allowedPaymentMethods: ['CARD', 'TOKENIZED_CARD'],
              allowedCardNetworks: ['AMEX', 'DISCOVER', 'MASTERCARD', 'VISA'],
              billingAddressRequired: true,
              billingAddressParameters: {
                format: 'FULL',
                phoneNumberRequired: true,
              },
            },
          },
        ],
        {}
      );
  
      // Show the payment sheet
      paymentRequest.show()
        .then((paymentResponse) => {
          // Process the payment response here
          // You can send the payment data to your server for processing
          // paymentResponse.details contains payment information
          // paymentResponse.methodName contains the payment method used (e.g., 'https://google.com/pay')
        })
        .catch((error) => {
          console.error('Payment Request Error:', error);
        });
    } else {
      alert('Google Pay is not available on this device.');
    }
  }
  
  // Attach the click event handler to the payment button
  const paymentButton = document.getElementById('paymentButton');
  if (paymentButton) {
    paymentButton.addEventListener('click', handlePaymentButtonClick);
  }
  