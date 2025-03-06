# HomeController - Currency Exchange API

This is a Ruby on Rails controller that retrieves exchange rate data for different currencies to the Brazilian Real (BRL) and prepares it for display on a chart. The controller fetches data from an external API (AwesomeAPI) and processes the data so that exchange rates for various currencies are associated with specific dates.

## Functionality

The code performs the following operations:

- Retrieves daily exchange rates for the following currencies:
  - USD-BRL (US Dollar - Brazilian Real)
  - EUR-BRL (Euro - Brazilian Real)
  - BTC-BRL (Bitcoin - Brazilian Real)
  
- Makes a request to the public API, AwesomeAPI, to obtain daily exchange rates for each currency.

- Processes the API response, extracting the exchange rates and associating them with the respective dates.

- Prepares the data to be displayed on a chart in the corresponding view.

## Dependencies

This controller depends on the following standard Ruby libraries:

- `net/http` - To make HTTP requests to the API.
- `json` - To parse the JSON response from the API.

## Data Structure

The controller defines a constant `CURRENCIES` that contains the currencies to be used in the API request. For each currency, the structure contains a currency code (e.g., USD-BRL, EUR-BRL, BTC-BRL).

The API response is processed to obtain the exchange rate value (`high`) for each date (`timestamp`). Dates are formatted in DD/MM/YYYY format, and values are stored in a hash for each currency. The controller then prepares this data for display in a chart.

## How It Works

1. **Defining Currencies:**
   The controller starts with a constant `CURRENCIES` that contains the codes for the currencies of interest:

   ```ruby
   CURRENCIES = [
     { code: 'USD-BRL' },
     { code: 'EUR-BRL' },
     { code: 'BTC-BRL' },
   ]
