if image_index == 0
{	// Idle Face
	if time_until_presneeze > 0
	{	// Currently idle
		time_until_presneeze--;
	}
	else
	{	// Pre sneeze image loaded
		image_index = 1;
	}
}

if image_index == 1
{	// Pre Sneeze Face
	if time_until_sneeze > 0
	{	// Currently Pre sneeze
		time_until_sneeze--;
	}
	else
	{	// Sneeze image loaded
		image_index = 3;
	}
}

if image_index == 3 
{	// Bad Sneeze Face
	if time_after_bad_sneeze > 0
	{	// Currently post bad sneeze
		time_after_bad_sneeze--;
	}
	else
	{	// Sad face after bad sneeze loaded
		image_index = 4;
	}
}

if image_index == 2
{	// Good Sneeze Face
	if time_after_good_sneeze > 0
	{	// Currently post good sneeze
		time_after_good_sneeze--;
	}
	else
	{	// This specific NPC has successfully passed.
		success = 1;
	}
}

