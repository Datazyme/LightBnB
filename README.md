# **LightBnB**
A multi-page AirBnB application that was created as part of Lighthouse Labs Web development course. A user can sign up to view properties by city, minimum and maximum price and rating. A user can also view previous reservations, post properties which include photos, address, cost per night, number of bedrooms, bathrooms and parking spaces. Data is stored in an SQL database. 

## Final Product Screenshots

### It's easy to sign up!
!["Sign up"](https://github.com/Datazyme/LightBnB/blob/master/docs/Sign_Up.png)

### And log in!
!["Log In"](https://github.com/Datazyme/LightBnB/blob/master/docs/Log_In.png)

### See all your previous reservations!
!["See Previous Reservations"](https://github.com/Datazyme/LightBnB/blob/master/docs/My_Reservations.png)

### Search BnB's for your next trip by city, minimum price, maximum price or rating (scores of 1-5)!
!["Search Options"](https://github.com/Datazyme/LightBnB/blob/master/docs/Search_Options.png)
!["Search Results"](https://github.com/Datazyme/LightBnB/blob/master/docs/Search_Results.png)


## Project Structure

```
├── public
│   ├── index.html
│   ├── javascript
│   │   ├── components 
│   │   │   ├── header.js
│   │   │   ├── login_form.js
│   │   │   ├── new_property_form.js
│   │   │   ├── property_listing.js
│   │   │   ├── property_listings.js
│   │   │   ├── search_form.js
│   │   │   └── signup_form.js
│   │   ├── index.js
│   │   ├── libraries
│   │   ├── network.js
│   │   └── views_manager.js
│   └── styles
├── sass
└── server
  ├── apiRoutes.js
  ├── database.js
  ├── json
  ├── server.js
  └── userRoutes.js
```

* `public` contains all of the HTML, CSS, and client side JavaScript. 
  * `index.html` is the entry point to the application. It's the only html page because this is a single page application.
  * `javascript` contains all of the client side javascript files.
    * `index.js` starts up the application by rendering the listings.
    * `network.js` manages all ajax requests to the server.
    * `views_manager.js` manages which components appear on screen.
    * `components` contains all of the individual html components. They are all created using jQuery.
* `sass` contains all of the sass files. 
* `server` contains all of the server side and database code.
  * `server.js` is the entry point to the application. This connects the routes to the database.
  * `apiRoutes.js` and `userRoutes.js` are responsible for any HTTP requests to `/users/something` or `/api/something`. 
  * `json` is a directory that contains a bunch of dummy data in `.json` files.
  * `database.js` is responsible for all queries to the database. It doesn't currently connect to any database, all it does is return data from `.json` files.

  ## Project ERD
  !["ERD"](https://github.com/Datazyme/LightBnB/blob/master/docs/ERD.png)

  ## Getting Started
  1. Clone your repository onto your local device.
  2. Install dependencies using the `npm install` command.
  3. Start the web server using the `npm run local` command. The app will be served at <http://localhost:3000/>.
  4. Go to <http://localhost:3000/> in your browser.

  # Dependencies
  - bcrypt: 5.1.0
  - body-parser: 1.19.0
  - cookie-session: 1.3.3
  - express: 4.17.1
  - nodemon: 1.19.1
  - pg: 8.8.0



