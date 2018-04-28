<?php
   header('Access-Control-Allow-Origin: *');
   include 'db.php';
   
   dbConnect();
   
   srand(709475);
   $result=query("SELECT theme FROM theme;");
   $theme=$result[0]["theme"];
   $themeEcho="";
   for($i=0;$i<strlen($theme);$i++){
	  $themeEcho.="_ ";
   }
   $deltaTime=mktime(0,0,0,4,16,2018)-time();
   $deltaTime=floor(floor($deltaTime/60)/60);//make hours
   $t=800;
   $a=0;
   for($i=0;$i<strlen($theme);$i++){
	   if ($deltaTime<$t){
			srand(709475+$a);
			$x=floor(rand(0,strlen($themeEcho))/2)*2;
			while($themeEcho[(int)$x]!="_"){
				$a+=1;
				srand(709475+$a);
				$x=floor(rand(0,strlen($themeEcho))/2)*2;
			}
			$a+=1;
			$themeEcho[(int)$x]=$theme[(int)$x/2];
	   }
	   $t=$t/2;
   }
   echo $themeEcho;
   dbClose();
?>