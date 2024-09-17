

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
void setup()
{
  size(900, 900);
  //
  minim = new Minim(this); //load data etc etc
//
//Load Music
String musigPathway = "Music/";
String mp3FileName = ."mp3";
//Alphabetical order
String ariaMath = "ariamath";
String miceOnVenus = "miceonvenus"
String sugarStarPlanetarium = "sugar_star_planetarium";

//


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
