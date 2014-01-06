#!/usr/bin/perl -w

# Name: Lindsay Hoyt
# Assignment: lab12
# Description: Learning about system commands, uptime and backtics.
#==========================================================================
#prints my last logins on to the system and there uptime
foreach $k (`last -f /var/log/wtmp.1`) {
    $string = `uptime`;
    chomp($k, $string);
    print "Logins: $k\n";
    print "Upload: $string\n";
}

#opens firefox and opens to this website
$com = "/usr/bin/firefox";
$url = "http://meteorology.lyndonstate.edu";
system($com, $url);

#or theres my second method but for some reason it doesn't pull up the web address

#opens firefox
$com = system("/usr/bin/firefox");

#if a 1 is passed or any other number it will go to the website
if($com != 0)
{
    system($url);
}

#otherwise it will print out this statement
else
{
    print "Return is: $com \n";
    print "Sorry I cannot display the website at this time.";
}

#closes the program
exit;
