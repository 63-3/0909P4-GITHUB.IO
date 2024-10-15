import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 3; //Able to Autodetect based on Pathway
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
int appWidth, appHeight;
float musicButtonDIV_X=0.0, musicButtonDIV_Y=0.0, musicButtonDIV_Width=0.0, musicButtonDIV_Height=0.0;
float musicButtonSquareX=0.0, musicButtonSquareY=0.0, musicButtonSquareWidth=0.0, musicButtonSquareHeight=0.0;
float stopX=0.0, stopY=0.0, stopWidth=0.0, stopHeight=0.0;
//
color orange1=#FFC986, orange2=#E89D60, white=#FFF6DE, blue1=#436BAA, blue2=#2C5CA7, grey=#3A3C43, sap=#C99400, orange3=#F5A400, black=#000000;
color dayForeground=orange1, dayHoverover=orange2, dayBackground=white;
color darkForeground=blue1, darkHoverover=blue2, darkBackground=grey;
color nightForeground=sap, nightHoverover=orange3, nightBackground=black;
color appColorForeground, appColorHoverover, appColorBackground;
//
Boolean colorDarkMode=false;
/*

   - Day: Foreground #FFC986 | Background (Hoverover) #E89D60 | Background: #FFF6DE
   - Dark: Foreground #436BAA| Background (Hoverover) #2C5CA7| Background: #3A3C43
   - Night: Foreground #C99400| Background (Hoverover) #F5A400| Background: #000000
   
   */
   
   //
void setup()
{
  size(1000, 800);
  appWidth = width;
  appHeight = height;
  //Variables for any music button
  musicButtonDIV_Width = appWidth*1/2;
  musicButtonDIV_Height = appHeight*1/2;
  musicButtonDIV_X = musicButtonDIV_Width - musicButtonDIV_Width*1/2;
  musicButtonDIV_Y = musicButtonDIV_Height- musicButtonDIV_Height*1/2;
  //Use if statement to change, introduce ternary operator
  //
  //Population (Variables)
  //Work out a case Study: 
  if ( musicButtonDIV_Width >= musicButtonDIV_Height ) { // Landscape //error: square does not go in the middle
   // musicButtonWidth needs to change
   musicButtonSquareWidth = musicButtonDIV_Height ;
   musicButtonSquareHeight = musicButtonDIV_Height ;
   float padding1 = musicButtonDIV_Width - musicButtonDIV_Height; //working out value needed, with formulae
   float padding2 = padding1*1/2; ////working out value needed, with formulae
   musicButtonSquareX = musicButtonDIV_X + padding2 ; //note: minus moves it the wrong way, difficult to see
   musicButtonSquareY = musicButtonDIV_Y;
   println( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
   println ( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
   println ( padding1 );
   } else { //Portrait
   // musicButtonHeight needs to change
   musicButtonSquareWidth = musicButtonDIV_Width ;
   musicButtonSquareHeight = musicButtonDIV_Width;
   float padding1 = musicButtonDIV_Height - musicButtonDIV_Width; //working out value needed, with formulae
   float padding2 = padding1*1/2; ////working out value needed, with formulae
   musicButtonSquareX = musicButtonDIV_X; //note: minus moves it the wrong way, difficult to see
   musicButtonSquareY = musicButtonDIV_Y + padding2;
   println( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
   println ( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
   println ( padding1 );
   }
   stopWidth = musicButtonSquareWidth*3/5;
   stopHeight = stopWidth;
   stopX = musicButtonSquareX + musicButtonSquareX*1/4;
   stopY = musicButtonSquareY + musicButtonSquareY*1/4;
   println( stopX, stopY, stopWidth, stopHeight );
   //
   /* Music Button Square Formulae for IF Statement Above
   // Use Paper Folding and Case Study
  float padding = 1.0/5.0;
   float stopButtonSize = musicButtonSquareWidth*3/5;
   stopWidth = stopButtonSize; 
   stopHeight = stopButtonSize;
   stopX = musicButtonSquareX + musicButtonSquareX*padding;
   stopY = musicButtonSquareY + musicButtonSquareY*padding;
   */
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  //
  //
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //
  String ariaMath = "ariamath";
  String miceOnVenus = "miceonvenus";
  String sugarStarPlanetarium = "sugar_star_planetarium";
    //
  //Add Reading into Array;
  String directory = "../../../" + musicPathway;
  String file = directory + ariaMath + mp3FileName;
  song[currentSong] = minim.loadFile( file );
  file = directory + miceOnVenus + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + sugarStarPlanetarium + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  //
  currentSong = 0;
  //
  song[currentSong].play();
  //DIVs
  //rect() based on variables; variables change with program (introduces parameters of a function and TABS)
  //rect( X, Y, Width, Height );
  //rect( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
} //End setup
//
if (hour()<=7 || hour()>=17) {
//night mode}
  appColorForeground = nightForeground;
  appColorHoverover = nightColorHoverover;
  appColorBackground = nightColorHoverover;
} else if (hour()>7 || hour()<17) {
//day mode mode
  appColorForeground = dayForeground;
  appColorHoverover = dayColorHoverover;
  appColorBackground = nightColorHoverover;
} else {
//dark mode
 appColorForeground = darkForeground;
 appColorHoverover = darkColorHoverover;
 appColorBackground = darkColorHoverover;

}
//
void draw() {
  background(0); //Gray Scale: 0-255, full BLUE Colour
  //
  rect( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
  //
  /* Note: 3 types of colour, in pairs for hoverover
   - Day: Foreground #FFC986 | Background (Hoverover) #E89D60 | Background: #FFF6DE
   - Dark: Foreground #436BAA| Background (Hoverover) #2C5CA7| Background: #3A3C43
   - Night: Foreground #C99400| Background (Hoverover) #F5A400| Background: #000000
   - Dark Mode is for all the time, how bright the screen is and eye strain
   - API: when does sunrise, when does sunset, is the system time within those hours
   - Night mode is for all the time or just
   - Note: preferences are hardcoded here but can be choices in CS20
   */
  //if ( day ) {} else if ( dark ) {} else {}
  //
  //Hoverover IF - Used in all other buttons too
  if ( mouseX>musicButtonSquareX && mouseX<musicButtonSquareX+musicButtonSquareWidth && mouseY>musicButtonSquareY && mouseY<musicButtonSquareY+musicButtonSquareHeight ) {
    stopButtonHoverOver = appColorHoverover; // Single Line IFs for Day, Dark, and Night Booleans
  } else {
    stopButtonHoverOver = appColorForeground; // Single Line IFs for Day, Dark, and Night Booleans
  }
  fill(stopButtonHoverOver );
  noStroke(); //Colour
  //
  rect( stopX, stopY, stopWidth, stopHeight ); //(X, Y, width, height, roundedEdge1, roundedEdge2, roundedEdge3, roundedEdge4, )
  fill(255); //noFill();
  stroke(1); //Reset default
  //
  //Music Buttons Interactions: cascading IFs can become AND Statements
  //Note: keypressed must have click on screen
  //
} //End draw
//
void mousePressed() {
  //Boolean for Click
  //if() {} else {}
  //
  /* STOP Button Mouse Press, after Hoverover
   Must have Hoverover to ensure mouse will activate, visual confirmation of algorithm
   */
  if ( mouseX>musicButtonSquareX && mouseX<musicButtonSquareX+musicButtonSquareWidth && mouseY>musicButtonSquareY && mouseY<musicButtonSquareY+musicButtonSquareHeight ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause(); //single tap
    } else {
      song[currentSong].rewind(); //double tap
    }
  }
  //
} //End mousePressed
//
void keyPressed() {
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ;
   */
  //if ( key=='P' || key=='p' ) song[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) song[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause(); //single tap
    } else {
      song[currentSong].rewind(); //double tap
    }
  }
} //End keyPressed
//
// End Main Program
