 import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 8; //Able to Autodetect based on Pathway
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
int appWidth, appHeight;
float musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height;
float musisButtonSquareWidth, musicButtonSquareHeight, musicButtonSquareX, musisButtonSquareY;
//
void setup()
{
  size(600, 800);
  appWidth = width;
  appHeight = height;
  //Variables for any music button
  musicButtonDIV_Width = appWidth*1/2;
  musicButtonDIV_Height = appHeight*1/2;
  musicButtonDIV_X = musicButtonDIV_Width - musicButtonDIV_Width*1/2;
  musicButtonDIV_Y = musicButtonDIV_Height - musicButtonDIV_Height*1/2;
  //Use if statement to change, introduce ternary operator
  //
  //Population(variables)
  
  musicButtonDIV_Width = musicButtonDIV_Height;
  musicButtonDIV_Height = musicButtonDIV_Height;
  
  /*
  stopWidth = musicButtonDIV_Width*stopButtonSize;
  stopHeight = musicButtonDIV_Height*stopButtonSize;
  stopX = musicButtonDIV_X+padding;
  stopY = musicButtonDIV_Y+padding;
  */
  //
  // musicButtonWidth needs to change
  musicButtonSquareWidth = musicButtonDIV_Width;
  musicButtonSquareHeight = musicButtonDIV_Width;
  float padding1 = musicButtonDIV_Height - musicButtonDIV_Width;
  float padding2 = padding1*1/2;
  musicButtonSquareX = musicButtonDIV_X;
  musicButtonSquareY = musicButtonDIV_Y + padding2;
  println( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDiv_Width, musicButtonDiv_Height );
  println ( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
  println ( padding1);  
  if   ( musicButtonDIV_Height >= musicButtonSquareWidth )
    musicButtonSquareWidth = musicButtonDIV_Width;
  musicButtonSquareHeight = musicButtonDIV_Width;
  float padding1 = musicButtonDIV_Height - musicButtonDIV_Width;
  float padding2 = padding1*1/2;
  musicButtonSquareX = musicButtonDIV_X;
  musicButtonSquareY = musicButtonDIV_Y + padding2;
  println( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDiv_Width, musicButtonDiv_Height );
  println ( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
  println ( padding1);  
 } else {
    musicButtonHeight = musicButtonWidth;
  }
 
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  //
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String ariaMath = "ariamath";
  String miceOnVenus = "miceonvenus";
  String sugarStarPlanetarium = "sugar_star_planetarium";
  //
  //Add Reading into Array
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
  //Use play(timeStart) & loop(numberOfLoops)
  //Purpose is 2D Shapes
  //Introduce keyPressed as keyboard shortcuts
  //Introduce mousePressed as interaction
  //
  //DIVs
  //rect() based on variables; variables change with program (introduces parameters of a function and TABS)
  //rect( X, Y, Width, Height );
  rect( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
} //End setup
//
void draw() {
  /*
  background(200); // Gray Scale: 0-255
  rect( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight ); //Square
  //fill();
  rect( stopX, stopY, stopWidth, stopHeight );
  */
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program
