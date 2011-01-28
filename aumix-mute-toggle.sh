#!/bin/sh

#   Aumix mute toggle
#   Version: 1.0.0
#   Date: 2004/11/15

#   Copyright: 2004 Jeremy Brand <jeremy@nirvani.net>
#   http://www.nirvani.net/software/
#   Licenced under the GNU Public License Version 2.

# Purpose:
#   To have a single script toggle between current sound levels
#   and mute with the aumix program while maintaining
#   and not deleting current mixer saved settings.

# Notes:
#   I bind this program to a single key in my window manager's
#   configuration file.  It then serves the purpose of having a
#   audio mute key.  If you have a fancy keyboard with a mute
#   key, try binding this program to that scancode.


TMP=$$

if [ -e "$HOME/.aumixrc.mute" ]; then

  mv -f $HOME/.aumixrc $HOME/.aumixrc.$TMP
  mv -f $HOME/.aumixrc.mute $HOME/.aumixrc
  aumix -L > /dev/null
  mv -f $HOME/.aumixrc.$$ $HOME/.aumixrc

else

  mv -f $HOME/.aumixrc $HOME/.aumixrc.$TMP
  aumix -S
  aumix -v 0; aumix -w 0
  mv -f $HOME/.aumixrc $HOME/.aumixrc.mute
  mv -f $HOME/.aumixrc.$TMP $HOME/.aumixrc

fi

