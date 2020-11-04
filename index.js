const core = require("@actions/core");
const github = require("@actions/github");
const fetch = require("node-fetch");

const getExchangeRate = async () => {
  const response = await fetch(
    "https://api.exchangeratesapi.io/latest?base=CAD&symbols=INR"
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
