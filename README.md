## Snips VoIP
A skill for the [Snips voice platform](http://snips.ai) that uses linphone to make voip calls.

### Installation
  - `snips-skill-server install_skills`
  - `sudo systemctl restart snips-skill-server`

### Run as Root
In order for linphone to capture the microphone, it must not be used by any app, so it automatically stops the snips-audio-server and starts it again.
To do this, you will have to run snips-skill-server as root by changing this file: `/lib/systemd/system/snips-skill-server.service` and then `sudo systemctl daemon-reload`


### Configure LinPhone
Copy your linphonerc configuration to this directory: `/var/lib/snips/skills/bkbilly.asterisk_voip/linphonerc`.
You can use the linphonerc.new as a template.

### Call from Assistant
  - "Call myself"
  - "Make a call to mom"
  - "Pick up the phone"

