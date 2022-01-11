/*
 * @file add_freq.cpp
 *
 * @brief mainly to add freq of liu input method for iBus input method
 *
 * Copyright (C) 2009 AceLan Kao <acelan [NOSPAM] _AT_ gmail.com>
 *
 * The code contained herein is licensed under the GNU General Public
 * License. You may obtain a copy of the GNU General Public License
 * Version 2 or later at the following locations:
 *
 * http://www.opensource.org/licenses/gpl-license.html
 * http://www.gnu.org/copyleft/gpl.html
 */

#include <iostream>
#include <string>
#include <map>

using namespace std;

int main( int argc, char* argv[])
{
	map< string, int> freq_map;
	int freq= 100;
	string prev_key, key, word;
	while( cin >> key >> word)
	{
		if( freq_map[ key] == 0)
			freq_map[ key]= 100;
		else
			freq_map[ key]= freq_map[ key]- 1;
		cout << key << "\t" << word << "\t" << freq_map[ key] << endl;
	}

	return 0;
}

