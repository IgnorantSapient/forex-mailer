# Forex Mailer


## What does this tool do?

Sends an email of the exchange rate of the a chosen currency pair on a schedule.💸  📬  🕰
![You get an email like this in your inbox: 1 CAD: 56.69 INR](https://user-images.githubusercontent.com/4549937/98455612-0a0ac180-2141-11eb-92af-9e4d617cee79.png)

## How do I get an email of my desired currency pair  daily?
Just click on the fork button located on the top of this repository and you will get an email every day at 14:00 Hrs UTC.

The default currency pair is CAD🇨🇦 x INR🇮🇳. 

Both of these defualts can be changed.

## How do I change the default currency pair?
Once you have forked this repository, open the `main.yml` file located under `.github/workflows`. Now inside the file you can change the `base-currency` and `target-currency` to whichever currencies you desire. 🤑🤑🤑🤑🤑🤑🤑

## Which currencies does this tool support?
The supported currencies are: 
>CAD,HKD,ISK,PHP,DKK,AUD,RON,SEK,IDR,INR,BRL,RUB,HRK,JPY,THB,CHF,SGD,PLN,BGN,TRY,CNY,NOK,NZD,ZAR,USD,MXN,ILS,GBP,KRW,MYR,EUR.

We use [Exchange rates api](https://exchangeratesapi.io/) for the currency data which in turn relies on the European central bank. Thanks to those amazing folk 🙏🏻.

## How do I change the date / time / number of times I get the emails?
Simply go the `main.yml` file located under `.github/workflows` and  you will find the cron string, it looks like this: `'0 14 * * *'`. Go to [crontab guru](https://crontab.guru/examples.html) and pick out / edit the cron string of your choice, if you wanted just weekly emails,  you'd change the cron string to `'0 0 * * 0'` and viola, your weekly forex email pair will be delivered to your inbox. 📅


