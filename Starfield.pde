//your code here
int setupSize = 600;
NormalParticle[] part = new NormalParticle[10];
void setup()
{
	size(600,600);
	for(int a = 0; a<part.length;a++)
	{
		part[a]= new NormalParticle();
	}
	//your code here
}
void draw()
{
	background(0);
	for(int b =0; b<part.length;b++)
	{
		part[b].show();
		part[b].move();
	}
	//your code here
}
class NormalParticle implements Particle
{
	double myX,myY,mySpeed,myAngle;
	color myColor;	
	NormalParticle()
	{
		myX=setupSize/2;
		myY=setupSize/2;
		mySpeed = 2;
		myColor = color(255,0,0);
		myAngle = (Math.random() * 10);
	}
	public void move()
	{
		myX+= Math.cos(myAngle)*mySpeed;
		myY+= Math.sin(myAngle)*mySpeed;
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,5,5);
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
	double myX,myY,mySpeed,myAngle;
	color myColor;
	OddballParticle()
	{
		
	}
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

