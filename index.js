const core = require("@actions/core");
const github = require("@actions/github");
const fetch = require("node-fetch");

const getExchangeRate = async () => {
  const baseCurrency = core.getInput('base-currency');
  const targetCurrency = core.getInput('target-currency');
  const response = await fetch(
    `https://api.exchangeratesapi.io/latest?base=${baseCurrency}&symbols=${targetCurrency}`
  );
  const data = await response.json();
  return data;
};

const setResultsToGithubOutput = (response) => {
  const exchangeRate = response.rates.INR;
  console.log(response);
  core.setOutput("exchange-rate", exchangeRate);
};

try {
  getExchangeRate().then((response) => setResultsToGithubOutput(response));
} catch (error) {
  core.setFailed(error.message);
}
