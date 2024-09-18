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
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //beginning current song is 0
//
void setup()
{
  size(300, 300);
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

// Add Reading into Array
  String directory = "../../" + musicPathway;
  println ( currentSong, directory );
  String file = directory + ariaMath + mp3FileName;
  //
song[currentSong] = minim.loadFile( file );


} // End setup
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
