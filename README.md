# Privacy policies

Published at **<https://mattcflynn.github.io/privacy/>** via GitHub Pages, and
referenced from App Store Connect as the Privacy Policy URL for each app.

| App | URL |
|---|---|
| Album Yearbook | `https://mattcflynn.github.io/privacy/album-yearbook/` |
| StudioScan | `https://mattcflynn.github.io/privacy/studioscan/` |
| TrailDot | `https://mattcflynn.github.io/privacy/traildot/` |

App Store Connect requires a privacy policy URL even when an app collects
nothing, which all three of these do. Each page is specific about what its app
actually touches rather than being one boilerplate policy pointed at three
different products — a reviewer reads these, and a generic one invites
questions.

## Before submitting

The contact address is a placeholder. Set it, which also removes the amber
banner from each page:

```sh
./set-contact.sh apps@yourdomain.com
git commit -am "Set the contact address"
git push
```

## Keeping them true

These pages describe real behaviour, verified against the source at the time of
writing: none of the three apps contains any networking code beyond Long
Player's two calls to Apple (a MusicKit catalogue lookup and a keyless iTunes
lookup), and none contains analytics, crash reporting or a third-party SDK.

**If that ever stops being true, these pages have to change first.** Adding an
analytics SDK, a crash reporter, or any call to a server changes what the App
Privacy answers in App Store Connect must say, and a policy that no longer
matches the binary is worse than no policy at all.

Plain HTML, no build step. Edit and push.
