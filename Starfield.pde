//your code here
int setupSize = 600;
Particle [] part;
void setup()
{
	size(600,600);
	part = new Particle[500];
	for(int a = 0; a<part.length;a++)
	{
		part[a]= new NormalParticle();
	}
	part[0] = new OddballParticle();
	part[1] = new JumboParticle();
	//your code here
}
void draw()
{
	fill(0,0,0,50);
	rect(-1,-1,800,800);
	noStroke();
	for(int b =0; b<part.length;b++)
	{
		part[b].move();
		part[b].show();
	}
	//your code here
}
class NormalParticle implements Particle
{
	double myX,myY,mySpeed,myAngle,origin,addition;
	color myColor;	
	NormalParticle()
	{
		origin = setupSize/2;
		myX=setupSize/2;
		myY=setupSize/2;
		mySpeed = Math.random()*5;
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255)
			,(int)(Math.random()*255));
		myAngle = (Math.random() *2*Math.PI);
		addition = .025;
	}
	public void move()
	{
		myX+= Math.cos(myAngle)*mySpeed;
		myY+= Math.sin(myAngle)*mySpeed;
		if()
		{
			addition= -addition; 
		}
		else
		{
			myAngle+=addition;
		}
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,7,7);
	}
	//your code here
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	double myX,myY,mySpeed;
	color myColor;
	int movement;
	OddballParticle()
	{
		myX = Math.random()*(setupSize-50);
		myY = Math.random()*(setupSize-50);
		mySpeed = Math.random()*10;
		myColor = color(255);
	}
	public void move()
	{
		movement = (int)(Math.random()*4);
		if(movement == 0)
		{
			myX+= (Math.random()*mySpeed);
		}
		else if(movement == 1)
		{
			myX-= (Math.random()*mySpeed);
		}
		else if (movement ==2)
		{
			myY+= (Math.random()*mySpeed);
		}
		else 
		{
			myY-= (Math.random()*mySpeed);
		}
		
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,15,15);
	}
	//your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
	JumboParticle()
	{
		mySpeed = Math.random()*5+3;
		myColor = color(255);
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,30,30);
	}
	//your code here
}