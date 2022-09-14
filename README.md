# Running

This image is a short running container which processes the results of the [LibreJS headless compliance check](https://www.gnu.org/software/librejs/manual/html_node/LibreJS-Development-Notes.html#Headless-compliance-check).

This container can be run with a URL as a parameter, e.g.:

```
$ docker run --rm ghcr.io/alyx/librejs:latest https://fsf.org
Screenshot saved to /tmp/screen.png
This site https://www.fsf.org/*
Whitelist Blacklist Forget Reload
No WHITELISTED scripts on this page.
ACCEPTED scripts in https://www.fsf.org/:
Show <SCRIPT> at line 1101 of https://www.fsf.org/:
Recognized license: "GNU General Public License (GPL) version 3".
Whitelist Blacklist Forget
No BLOCKED scripts on this page.
No BLACKLISTED scripts on this page.
```

**WARNING:** Early tests have shown that LibreJS' headless compliance check is not very good, and results of this check may not perfectly mirror production LibreJS installations. YMMV.
