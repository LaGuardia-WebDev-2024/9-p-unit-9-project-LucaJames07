setup = function() {
    size(600, 400);
};

//Background Images

var caveSceneImage = loadImage("https://st4.depositphotos.com/5677556/25417/i/450/depositphotos_254175894-stock-photo-small-cave-entrance-hole-in.jpg");

var forestImage = loadImage("https://d3f9k0n15ckvhe.cloudfront.net/wp-content/uploads/2016/10/David-Blackwell-Treescape-4-Black-Forest-Germany-via-Flickr.jpg");

var cabinImage = loadImage("https://i.ytimg.com/vi/lgDQj3K5g2U/maxresdefault.jpg");

var roomImage = loadImage("https://pbs.twimg.com/media/EFZ3UeuXUAAF5xA?format=jpg&name=4096x4096");

var wrongImage = loadImage("https://ascentaday.wordpress.com/wp-content/uploads/2021/01/creaking-floorboards-haunted-house-2020-web-300x244-1.jpg");

var jumpImage = loadImage("https://i.redd.it/c4j7yuem3hvc1.jpeg");

var caveImage = loadImage("https://townsquare.media/site/72/files/2020/06/bell_witch_cave_2tunnel.jpg?w=780&q=75");

var deepImage = loadImage("https://dfwfis.prod.dtvcdn.com/catalog/image/imageserver/v1/service/episode/0ba40b8e-4a13-48b1-9192-3fa127f2c545/keyframe-ci/640/360");

var leftImage = loadImage("https://media.istockphoto.com/id/1187603946/photo/curiosity.jpg?s=612x612&w=0&k=20&c=-7W162fLPrsCjaupQYysfrGqvx7fjCsoAFwe50gUF1Y=");

var sisImage = loadImage("https://us.123rf.com/450wm/altitudevisual/altitudevisual2303/altitudevisual230314536/201493399-girl-hiding-from-monster-in-dark-and-creepy-cave-with-only-flashlight-for-protection-created-with.jpg");

var escapeImage = loadImage("https://media.istockphoto.com/id/1319206600/photo/black-white-grunge-background-rock-texture-with-cracks-stone-wall-background-with-copy-space.jpg?s=612x612&w=0&k=20&c=f94jl9c226nWB7WIbj-5PBvpMkM-usoWS0bXucTDbJo=");

var fakeImage = loadImage("https://static.tvtropes.org/pmwiki/pub/images/jesus_7.png");

var rightImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_0nawA4uhc3Khuvty4AR75IFjOCSQzJxxIQ&s");

var runImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKTs7WBxZ_BoD8Km-iV8x1MVc5QOsNg0u_FA&s");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "(VOLUME UP) Find your sister, she's been out too long?  [F for forest | C for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "Something feels unsafe.  [S to Go Back | N to Continue]";
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "(VOLUME UP) Find your sister, she's been out too long  [F for forest | C for cave]";
    } 
    if(key == 'n'){
      sceneImage = cabinImage;
      sceneText = "There's a Cabin, you hear your sister calling your name [G to Enter | F to Go Back]";
    }
    if(key == 'g'){
      sceneImage = roomImage;
      sceneText = "She is calling you from behind the Couch [H to Check Couch | N to Go Back]";
    }
    if(key == 'h'){
      sceneImage = wrongImage;
      sceneText = "Your sister isn't here [M to Look Behind You]";
    }
    if (key == 'm'){
      sceneImage = jumpImage;
      sceneText = "That is not your sister";
      const audio = new Audio("https://cdn.glitch.global/5eefde24-2741-4439-bc46-c42414defccd/creepy%20killer%20breathing%20sound%20effect.mp3?v=1742653925825");
      audio.play();
      drawLeave(random(80,90),random(180,190));
    }
    if (key == 'c'){
      sceneImage = caveImage;
      sceneText = "It is dark and wet [S to Go Back | A to Go Deeper]";
    }
    if (key == 'a'){
      sceneImage = deepImage;
      sceneText = "The Cave splits ways [L for Left | R for Right]";
    }
    if (key == 'l'){
      sceneImage = leftImage;
      sceneText = "Your sister is stuck and crying in a creavace  [J to Help Her]";
    }
    if (key == 'j'){
      sceneImage = sisImage;
      sceneText = "Your sister is safe [U to Make your way out of the Cave]"
    }
    if (key == 'u'){
      sceneImage = escapeImage;
      sceneText = "There is no exit anymore [Q to Comfort your sister]"
    }
    if (key == 'q'){
      sceneImage = fakeImage;
      sceneText = "That was never your sister"
      const audio = new Audio("https://cdn.glitch.global/5eefde24-2741-4439-bc46-c42414defccd/creepy%20killer%20breathing%20sound%20effect.mp3?v=1742653925825");
      audio.play();
     drawLeave(random(80,90),random(180,190));
    }
    if (key == 'r'){
      sceneImage = rightImage;
      sceneText = "Something starts running towards you [O to Run]"
    }
    if (key == 'o'){
      sceneImage = runImage;
      sceneText = "You weren't fast enough"
      const audio = new Audio("https://cdn.glitch.global/5eefde24-2741-4439-bc46-c42414defccd/creepy%20killer%20breathing%20sound%20effect.mp3?v=1742653925825");
      audio.play();
      drawLeave(random(80,90),random(180,190));
    }
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(15);
   
   text(sceneText, 10, 375);
};

var drawLeave = function(leaveX, leaveY, leaveColor){
  textSize(random(40,45));
  fill(200,200,200);
  text("YOU DIDN'T FIND HER", leaveX, leaveY);
};



