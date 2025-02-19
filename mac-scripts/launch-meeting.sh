#!/bin/bash
##################################################################################################
# Launch Meeting v 1.0
#
# Written 02/14/2023 by Seth (DrumLordJr) Rice
# King of the Ricepad - sethrice@gmail.com
#
##################################################################################################
# Things to add:
#
# Change Log:
# 02/14/23 - 1.0 - Created
#
##################################################################################################
#
# Show Options for Usage
if [ ${#@} != 1 ]; then
  echo "==========================================================================================="
  echo "  Usage: $0 <seconds-2-wait> <meeting-url>"
  echo
  echo "    <seconds-2-wait>      How many seconds to wait, until it opens the meeting url?"
  echo "    <meeting-url>           URL shared with you for the virutal meeting"
  echo
  echo " Example:     Wait 5 minutes then start meeting"
  echo "			  $0 '300' 'https://my-meeting.zoom-gmeet.whatever"
  echo
  echo
  echo " Summary:"
  echo " Are you always late to meetings?"
  echo " Do you sometimes arive early after the reminder shows up on your screen,"
  echo " in hopes that you can continue to work on what you are doing, and the call will later"
  echo " just start, and you can then stop what you where doing, to focus on the call"
  echo " but because of this cronic issue you battle, you've anxiously arrived so early"
  echo " that the meeting servers don't know where to put you,"
  echo " because you showed up 18 minutes before the host, and now you realize only just now"
  echo " 8 minutes after the call should have started, that it hasn't, because you where hyperfocused,"
  echo " and that the it's a little to quiet, and that the call should have started by now,"
  echo " but you hear nothing, and after you take a closer gander you realize"
  echo " confirming it wasn't canceled, and seeing multiple 'hey are you joining the call' mesasges"
  echo " in slack you where in a split meeting. Meaning you where on one meeting server, "
  echo " but everyone else who joined at a reasonable time, has functional objects permanance,"
  echo " and doesn't suffer from time blindness, is now on the call, on another server"
  echo " wondering why you are so unreliable, which totally sucks, not just because you are late, but"
  echo " because you've been working on this for personal growth, and you use to be punctual in your 20's"
  echo " and you thought all along you'd be the first person in the call, because if it where a"
  echo " pysical conference room, you totally would have been, but you forget in first"
  echo " 18 minutes of this saga, that the world existed, because you where on a roll"
  echo " and now you are 10 minutes late to the call because you had to dissconnect from the call"
  echo " only to reconnect, then get prompted for an app update, that you had to panic say 'later' to"
  echo " narrowly dodging further delay, and the host has that damn bell that just"
  echo " outed you as being late as hell, causing the host to breifly forget what they where saying"
  echo " which would be bad enough, as you realize there is VP or C level person you didn't know was going"
  echo " to be in the call, so you apoligiese and try to explain what split meetings are,"
  echo " because, though it may not apply to what just happen, it might, that your insite is from when"
  echo " you use to work at a conferencing company back before Zoom was even a thing,"
  echo " and this sort of thing happend with your flagship conferencing solution GlobalMeet, and"
  echo " sometimes iMeet, which wasn't as great as GlobalMeet, and confusing be cause it wasn't"
  echo " in any way affiliated with Apple, yet it had that tiny little i in the bran name"
  echo " which at the time only apple did the little i for it's product names, but you don't care"
  echo " so much about someones poor attempt at missleading branding,"
  echo " because your dealing with this split meeting thing which affect both products,"
  echo " until a dev got on with F5 support, and made some stellar iRules written in tcl that with"
  echo " some tweaks from the devs, made it possible to look up the meeting ID number in a table"
  echo " of all the mettings running, so that folks would be assigned to the same Pool and Node"
  echo " no matter when they logged in to the call, before or after the host, finally making it"
  echo " possible for folks to not have to worry about split meetings anymore, and this was like"
  echo " 2012 when your team figured all this out, and now it's 2023, and you are on zoom, or google"
  echo " meet or whatever, and this shouldn't be a thing anymore for anyone by now, maybe not even apply,"
  echo " yet you are still trying to explain this concept to folks who just want to move on"
  echo " with the call, and don't really care, because sure this platform could have the same"
  echo " issue that you where so familiar with nearly 10 years earlier, but you just need to be on"
  echo " time please, because they've moved on, and now you're trying to figure out what's going on,"
  echo " why is the big boss here, what are they thinking about me bumbling in here late like a loof,"
  echo " because they know your name, and you have some positive reputation, but lets face it,"
  echo " if you look like an idiot right now, you'd better pull some wild magic out of your,"
  echo " but the host understandibly doesn't have time to back and tell you what you missed, which"
  echo " now starts to sound like something you've been working on and have insite into,"
  echo " that could help and maybe show your proactive skills, and serve as some of that magic you need,"
  echo " but instead makes you look like a dullard because you missunderstood the context and are all"
  echo " 'You guys talking about pancakes?' like that funny guy on The Orville who's name you and"
  echo " the captian can't remember, so he says 'There he is', every time he passed him in the hallway"
  echo " during the 2d quantam episode which only one other team member would even get the reference to, if you"
  echo " quietly quoted it as a follow up to their now annoyed 'uhm, no'"
  echo " response before you go back on mute, failing further to try and ease the now uncomfortable funk"
  echo " you've created and managed to only stir up further in the call, as you attempt to "
  echo " acknowledge you are still clueless but motivated and trying to help, remembering only that the big"
  echo " boss guy did the same 'hey, there he is', thing to you in the office back in the 'before times', and"
  echo " does he really know your name, does it matter, or has he been confusing you this whole time"
  echo " with someone else on your team, who, lets face it, looks way more put together than you,"
  echo " so you try to embrace that crazy hair Einstein/Doc Brown look, but now you realize you "
  echo " might have been hurting their reputation until now instead?"
  echo
  echo " Me neither."
  echo " But if that was the case, this would maybe help possibly perhaps why-not? As long as you"
  echo " remember to use it."
  echo
  echo "==========================================================================================="
  echo
  exit
fi
# Launch a meeting from the CLI after the timer you set zero's out. So you aren't late, or way early.
# Command will essencially run the following (sleep <seconds entered> &&  cd /Applications ; open Google\ Chrome.app "https://meeting-url.local")



countdown="$1"
url=$2
thisdir=`pwd`


sleep "$countdown"
cd /Applications
eval $(open "Google Chrome.app" "$URL")
cd "$thisdir"
