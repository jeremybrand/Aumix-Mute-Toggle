Aumix mute toggle
Version: 1.1.0
Date: 2005/03/21

Copyright 2004, 2011 Jeremy Brand <jeremy@nirvani.net>
http://www.nirvani.net/software/
Licenced under the GNU Public License Version 2.

Purpose:
To have a single script toggle between current sound levels
and mute with the aumix program while maintaining
and not deleting current mixer saved settings.

Notes:
I bind this program to a single key in my window manager's
configuration file.  It then serves the purpose of having a
audio mute key.  If you have a fancy keyboard with a mute
key, try binding this program to that scancode.

Usage:

Toggle between mute and unmute based on last state:
aumix-toggle-mute.sh

Force mute:
aumix-toggle-mute.sh --force-mute

Force unmute:
aumix-toggle-mute.sh --force-unmute
