#include "milopid.h"

MiloPid::MiloPid(double KP,double goal)
{
	this->KP=KP;
	setPoint=goal;
}

void MiloPid::setFixedPoint(double newgoal)
{
	setPoint=newgoal;
}

double MiloPid::correction(int currentError)
{
	return this->kp_correction(currentError);
}

// private member
int MiloPid::kp_correction(int currentPos)
{
	double error=setPoint-currentPos;
	int corrected_value=error*KP;
	corrected_value=this->normalize(corrected_value,65535);
	return corrected_value;
}

// private member
int MiloPid::normalize(int value,int range)
{
	int outValue=0;

	if(value > range)
	{
		outValue=range;	
	}
	else if(value < -range)
	{
		outValue=-range;
	}
	else
	{
		outValue=value;
	}

	return outValue;
}
