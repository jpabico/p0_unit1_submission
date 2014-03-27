// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Jon Pabico
//  2. Jake Persing


//  1. "YOU SIGNED... WHO?!"

// define object constructor
  function Client(name, age, quote){
    this.name = name,
    this.age = age,
    this.quote = quote
  }

// created 2 new instances of the Client object
var beyonce = new Client("Beyonce", 50, "If you like it, you'd better put a ring on it.");
var karlUrban = new Client("Karl Urban", 50, "All she left me was my bones.");


// 2. "Here they Come!"

// created 3 more new instances of the Client object based on given info
var adamSandler = new Client("Adam Sandler", 47, "That's your home! Are you too good for your home?!");
var kristenBell = new Client("Kristen Bell", 33, "Do you wanna build a snowman?");
var jimCarrey = new Client("Jim Carrey", 52, "...So you're telling me there's a chance? YEAH!");


//    3. "TIME IS MONEY!"

// YOUR CODE HERE!

// none of our code was refactored because we started off using the object constructor
// Tyler told us that it was anticipated that we were going 
// to use object literal notation, not the object constructor

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";


// 4. "SHOW 'EM OFF!"


// defined display function
Client.prototype.display = function() {
  console.log("Introducing: " + this.name);
  console.log("This person is: " + this.age);
  console.log("Their quote is: " + this.quote);
}

// an array of celebrities 
var celebArray = [beyonce, karlUrban, adamSandler, kristenBell, jimCarrey, shooterMcGavin];


//       ** BONUS **

// modified display function to be called by the for loop below

// for loop to call display function on each element of celebArray
for(var i = 0;i < celebArray.length;i++){
  celebArray[i].display();
}

// Reflection
// I enjoyed this GPS.  My partner, Jake was very smart and confident.
// I had little worries that he was guiding me in the right direction 
// when he was the navigator.  And he followed directions well as a driver.  
// As noted above, I didn't refactor our solution because it seemed to be
// as efficient and readable as we could make it.  We had started off using 
// object constructors rather than object literal notation.  Tyler made
// the process smooth and enjoyable, offering us options in ways of
// accomplishing our goals for the session.  