

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
// Global Variables
//
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer [numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //beginning current song is 0
//
int appWidth, appHeight;
float stopX, stopY, stopWidth, stopHeight;
//
void setup()
{
  size(900, 900);
  appWidth = width;
  appHeight = height;
  //Variables for any music buttons
  stopWidth = appWidth*1/2;
  stopHeight = appHeight*1/2;
  stopX = stopWidth - stopWidth*1/2; 
  stopY = stopHeight - stopHeight*1/2;
  
  //stopX, stopY, stopWidth, stopHeight
  //
  //
  minim = new Minim(this); //load data etc etc
//
//Load Music
String musicPathway = "Music/";
String mp3FileName = ".mp3";
//Alphabetical order
String ariaMath = "ariamath";
String miceOnVenus = "miceonvenus";
String sugarStarPlanetarium = "sugar_star_planetarium";

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
  rect( stopX, stopY, stopHeight, stopWidth );
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} // End mousepressed
//
void keyPressed() {
} //End keyPressed
//
//
// End Main Program
