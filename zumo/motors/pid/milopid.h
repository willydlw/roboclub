// class for pid control 
#ifndef MILO_PID_H
#define MILO_PID_H

class MiloPid
{
public:
	MiloPid(double KP,double goal); // constructer for KP only
	void setFixedPoint(double);
	//void error(int);
	double correction(int);

private:
	// instance values
	double setPoint;
	double KP;
	// private members
	int kp_correction(int currentPos);
	int normalize(int,int);
};

#endif
