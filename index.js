const core = require("@actions/core");
const github = require("@actions/github");
const fetch = require("node-fetch");

const baseCurrency = core.getInput("base-currency");
const targetCurrency = core.getInput("target-currency");

const getExchangeRate = async () => {
  const response = await fetch(
    `https://api.exchangeratesapi.io/latest?base=${baseCurrency}&symbols=${targetCurrency}`
  );
  const data = await response.json();
  return data;
};

/*This function is used to set the value of the exchange-rate variable
 so that other github-actions steps and jobs can access it.
 */
const setResultsToGithubOutput = (response) => {
  const exchangeRate = parseFloat(response.rates[targetCurrency]);
  console.log(response);
  core.setOutput("exchange-rate", exchangeRate.toFixed(2));
};

try {
  // Get the JSON webhook payload for the event that triggered the workflow
  const payload = JSON.stringify(github.context.payload, undefined, 2);
  console.log(`The event payload: ${payload}`);
  getExchangeRate().then((response) => setResultsToGithubOutput(response));
} catch (error) {
  core.setFailed(error.message);
}
