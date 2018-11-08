# Crypto Scrap 

Bienvenue sur le CrypoScrap. Le cryptoScrap te permet de scraper le cours des cryptommanies via CoinMarketCap.

## La team
@Charlotte, @Emilie, @MattMonta, @Jojo, @Elmousski 

### Comment ca marche ? 

1. Clone le repository et mets toi dedans

2. Install all the gems
```sh
bundle install
```
3. Crée la BDD
```sh
rails  db:create
```
4. Migrate db files
```sh
rails db:reset
```
5. Lance la console
```sh
rails c
```
6. Lance le scrap, attends un peu !
```sh
HashCoin.new.perform
```
7. Lance le server
```sh
rails s
```
