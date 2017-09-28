
 
 void setup()   
 {     
 	size(1000,1000); 
 }   
 void draw()   
 {    
    fleas = new Bacteria;
 	ellipse(300,300,500,500);
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
	 		myX = myX + (int)(Math.random()*5)-1;
	 	}
	 	else if (myX> mouseX)
	 	{
	 		myX = myX + (int)(Math.random()*5)-3;
	 	}
	 	else 
	 	{
	 		myX =myX + (int)(Math.random()*5)-2;
	 		
	 	}
	 	if (myY < mouseY)
	 	{
	 		myY = myY + (int)(Math.random()*5)-1;
	 	}
	 	else if (myY> mouseY)
	 	{
	 		myY = myY + (int)(Math.random()*5)-3;
	 	}
	 	else (myY> mouseY)
	 	{
	 		myY = myY + (int)(Math.random()*5)-2;
	 	}
	}
	void show()
 	{
 		 		
 	}
 	
 }    