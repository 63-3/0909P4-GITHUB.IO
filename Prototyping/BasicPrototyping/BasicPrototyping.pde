import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Try loop() oe play)
// Global Variables
//
Minim minim;
int numberOfSongs = 2;
AudioPlayer[] song = new AudioPlayer [numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //beginning current song is 0
//
void setup()
{
  size(900, 900);
  //
  minim = new Minim(this); //load data etc etc
AudioPlayer [] song = newAudioPlays [];
//


//Load Music
//
String musigPathway = "Music/";
String mp3FileName = ."mp3";
String sugarStarPlanetarium = "sugar_star_planetarium";
String ariaMath = "ariamath";
String miceOnVenus = "miceonvenus"
  beatYourCompetition.play();
// End setup
}

String directory - "../../" + musicPathway;
printin ( directory );
String  file = directory + sugarStarPlanetarium + mp3FileName;

song[currentSong] = minim.loadFile( "../..Music/sugarStarPlanetarium.mp3" )
  song[currentSong+1] = minim.loadFile();
("../..Music/ariaMath.mp3")
  song[currentSong+1] = minim.loadFile();
("../..Music/miceOnVenus.mp3")

  song[currentSong].play();
}

void draw() {
} //End draw

void mousePressed() {
} // End mousepressed

void keyPressed() {
} //End keyPressed

//
//
// End Main Program
