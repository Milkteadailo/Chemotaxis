int aSizex = 50;
int aSizey = 50;
float bSizex = 25;
float bSizey = 25;
Bacteria [] fleas;
void setup()   

 {     
 	size(600,600); 
 	background (0);
 	fleas = new Bacteria[10];
 	for(int i = 0; i < 10; i++)
	{
	   fleas[i] = new Bacteria();
	}
 }   
 void draw()   
 {    
    dinnertime();
 	for(int i = 0; i < 10; i++)	
 	{	
 		fleas[i].run();
 		fleas[i].show();
 	}
 }  
 class Bacteria    
 {     
 	int myX,myY,myColor;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*500+1); 
 		myY = (int)(Math.random()*500+1);
 		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	} 
 	void run()
 	{
	 	if (myX < mouseX)
	 	{
	 		myX = myX + (int)(Math.random()*10)+10;
	 	}
	 	else if (myX> mouseX)
	 	{
	 		myX = myX + (int)(Math.random()*10)-10;
	 	}
	 	else 
	 	{
	 		myX =myX + (int)(Math.random()*10);
	 		
	 	}
	 	if (myY < mouseY)
	 	{
	 		myY = myY + (int)(Math.random()*10)+10;
	 	}
	 	else if (myY> mouseY)
	 	{
	 		myY = myY + (int)(Math.random()*10)-10;
	 	}
	 	else
	 	{
	 		myY = myY + (int)(Math.random()*10);
	 	}
	}
	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,bSizex,bSizey);
 		if (mouseX == myX && mouseY == myY)
 		{
 			aSizex = aSizex - 1;
 			aSizey = aSizey - 1;
 			bSizex = bSizex + .1;
 			bSizey = bSizey + .1;
 		}
 		if (aSizex == 0 && aSizey == 0)
 		{
 			aSizex = 50;
 			aSizey = 50;
 		}	
 	}
 	
 }    

  void dinnertime()
 {
 	fill(0);
 	rect(mouseX,mouseY,aSizex,aSizey);
 }    

void mousePressed()
{
	for(int i = 0; i < 10; i++)

	fleas[i] = new Bacteria();
}