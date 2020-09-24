# Bangladesh Region Wise Covid Cases

Check the map here: https://arafkhan03.github.io/BangladeshRegionWiseCovidCases/BDCovidCasesRegionwise.html

Date Created: 11 August 2020.   

Leaflet map built in R to show number of COVID cases in Bangladesh by region (as of 11 August 2020)

## Data Collection
Here I am going to use Cramstack API (a Bangladeshi Data Company) to pull COVID Data for Bangladesh (region-wise). Please note, I have secured a key from them which I can't show here for privacy reasons.

## Data Preparation
After pulling the dataset, some formations and tweaking were done to get bdcovid dataframe which includes the region name (in English), total confirmed cases till 10 August 2020 along with latitudes and longitudes.

## Leaflet Plot
A simple leaflet plot with circle markers were drawn to show the spread of covid cases. Circle radius was adjusted to be five times of the confirmed cases. Total confirmed cases were multiplied by 5 to properly show the distribution in the circle zones.

## Credit
I humbly give credit to Cramstack for providing me the access to the API.
[link to Cramstack!](https://cramstack.com/)
