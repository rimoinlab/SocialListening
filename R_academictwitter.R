library(academictwitteR)
library(reactable)




set_bearer()


# #TEST CODE   

# 
# tweets <-
#   get_all_tweets(
#     query = c("sad", "crazy"),
#     start_tweets = "2019-12-31T10:00:00Z",
#     end_tweets = "2020-01-01T10:00:00Z",
#     country = "US",
#     place = "seattle",
#     lang = "en",
#     point_radius = c(-122.33795253639994, 47.60900846404393, 25)
#   )


# 
# # 
# tweets <-
#   get_all_tweets(
#     query = key_words_long,
#     start_tweets = "2020-01-01T00:00:00Z",
#     end_tweets = "2022-08-11T00:00:00Z",
#     
#     file = "long_covid",
#     n=500,
#     page_n=100)


# 
# TEST WITHOUT LOCATION PARAM
# ucla_tweets <- 
#   get_all_tweets( 
#     query = "covid",
#     start_tweets = "2020-01-01T00:00:00Z",
#     end_tweets = "2022-08-11T00:00:00Z",
#     file = "ucla_long_covid_test",
#     n=1000)

reactable(tweets)   

ucla_coord = c(34.125381, -118.471901, 2) #lat, lon, mile radius  

bearer_token<-"AAAAAAAAAAAAAAAAAAAAABta
fwEAAAAAaJamYX5d1sf740Xh2iCCd%2By5%2F1A%3D9
3iimO6Cu6JTg5UufuWY2jeaRaWOdQX295cxpZE71QCn6pGOtG"
#SET KEYWORD

key_words = c("longcovid", "cough", "fatigue", 
              "fever", "shortness of breath", "pain")


key_words_long = c("Long Covid clinic* OR 'Longcovidclinic*' OR 'Long Covid Care' OR 'Long COVID Physio' OR 
   'LongCOVIDPhysio' OR 'Long COVID Recovery' OR 'longCovid*' OR 'Long Covid' OR 'post-COVID-19 syndrome' 
   OR 'post-COVID syndrome' OR 'post COVID syndrome' OR 'LongHauler*' OR 'Long Hauler*' 
   OR covid1in10 OR covid1in20 OR longhaulcovid OR 'apresj20*') 
  AND ('stress*' OR 'symptom*' OR 'shortness of breath' OR 'pain*' OR 'tired*' 
  OR 'brain fog' OR 'fatigue*' OR 'fever*' OR 'temperature*' OR 'insomni*' OR 'ache*'
  OR '#SOB' OR 'mental health' OR 'pins and needle*' OR 'chest pain' OR 'chest tight*' 
  OR 'concentrat*' OR 'can't sleep' OR 'insomni*' OR 'heart pain*' OR 'heart palpitati*'
  OR 'joint pain*' OR 'depress*' OR 'anxi*' OR 'tinnitu*' OR 'ear pain*' OR 'earache*' 
  OR 'sickness' OR 'nausea' OR 'stomach pain*' OR 'stomach ach*' OR 'appetite' OR 'diarrhoea' OR 'headache*'
  OR 'rash*' OR 'flare*' OR 'high temp*' OR 'smell*' OR 'taste*' OR 'weak*' OR 'worr*' 
  OR 'vacci*' OR 'clinic*' OR 'treatment*'")


key_words_long1 = c("long covid clinic", "longcovidclinic","long covid care", "long covid physio",
                   "longcovidphysio", "long covid recovery", "longcovid", "long covid", "post-COVID-19 syndrome",
                   "post-COVID syndrome", "post COVID syndrome", "LongHauler", "Long Hauler","covid1in10", "covid1in20",
                   "longhaulcovid", "apresj20")
                   
                   
                   
key_words_long2 = ("concentrat*", "can't sleep", "heart pain", "heart palpitati*", "joint pain", "depress", "anxi", "tinnitu*", "ear pain*",
                   "earache*", "sicknes", "nausea", "stomach pain*", "stomach ach*", "appetite", "diarrehea", "headache",
                   "rash*", "flare*", "high temp*", "smell*", "taste*", "weak*", "worr*", 
                   "vacci")
                   
        

key_words_long3 = ("stress", "symptom", "shortness of breath", "pain", "tired", "brain fog", "fatigue", "fever", 
                   "insomnia", "ache", "SOB", "mental health", "pins and needle", "chest pain", "chest tight",
                   "clinic", "treatment")
                  




ucla_tweets <- 
  get_radius_tweets( 
          query = "#longcovid",
          point_radius = c(34.125381, -118.471901, 2),
          start_tweets = "2020-01-01T00:00:00Z",
          end_tweets = "2022-08-11T00:00:00Z",
          file = "ucla_long_covid",
          n=1000,
          bearer_token = get_bearer()
  )


ucla_tweets <- 
  get_all_tweets( 
    query = key_words,
    start_tweets = "2020-01-01T00:00:00Z",
    end_tweets = "2022-08-12T00:00:00Z",
    country = "US",
    place = "LA",
    point_radius = c(-118.471901, 34.125381, 5),
    file = "ucla_long_covid",
    n=1000,
  )





ucla_tweets1 <-
  get_all_tweets(
    query = key_words_long1,
    start_tweets = "2019-12-31T10:00:00Z",
    end_tweets = "2022-08-11T10:00:00Z",
    country = "US", 
    place = "LA",
    lang = "en",
    point_radius = c(-118.471901, 34.125381, 5)
  )

#trying different things (keywords, radius, etc.) just to see if we get hits. 


tweets2 <-
  get_all_tweets(
    query = c("#longcovid"),
    start_tweets = "2019-12-31T10:00:00Z",
    end_tweets = "2022-08-11T10:00:00Z",
    country = "US", 
    place = "LA",
    lang = "en",
    point_radius = c(-118.471901, 34.125381, 25),
    bearer_token = get_bearer(),
    n=1000
  )


#amazingly not many tweets show up, although it is working. Looks like people aren't tweeting about symptoms much

