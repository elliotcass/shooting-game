void mousePressed() {
  if (firedNum<shottotal) {   
    shotx[firedNum] = mouseX - jw/2;
    shoty[firedNum] = jy- jw/2;
    firedNum = firedNum +1;
  }
  if(mouseY>=startbuttony && mouseY<=startbuttony+startbuttonh && mouseX>=startbuttonx && mouseX <=startbuttonx+startbuttonw){
  stage = 2;  
  }
}

