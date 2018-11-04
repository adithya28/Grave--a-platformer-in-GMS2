///@arg mindistance
///@arg maxdistance
///@arg object
var mindistance=argument0
var maxdistance=argument1
var object=argument2

if instance_exists(object)
{
	return distance_to_object(object)<=maxdistance&& distance_to_object(object)>=mindistance;
	
}

