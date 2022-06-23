## Getting Started

Thanks for giving me this Opportunity.

1) You can find sample apk in Sample APK folder
2) To build the apk you could use 'flutter build apk' command in the project directory.


## About Project Files

◉ 'ApiManager.dart' file contains Api function to fetch Movies.

◉ There are 2 Models 'Movies' for storing result recieved from Api response and 'StateModel' to manage states and overall state of Application.

◉ 'Constants.dart' contains all the Constants required in the Project like Api Base URl, etc.


## Note : 
I was not getting the Imdb raiting If I use search 's' in the Url 'http://www.omdbapi.com/?apikey=[yourkey]&s=[searchKeyWord]' but If I can get the Imdb rating if I use ImbdId in Url 'http://www.omdbapi.com/?i=[ImbdId]&apikey=[yourkey]' but Initially I don't have the ImbdId I can get the ImbdId from the above Url. So to Fix this I will have to call the url with ImbdId and I have to call this api 'n' number if times. Here 'n' refers to the total result fetched from search APi.
So for now I have added static Imbd Rating.
