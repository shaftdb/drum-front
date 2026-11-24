# Drum Front

A narrow, dark practice desk for a second-monitor side window. It gathers:

- **New for you** — fresh song suggestions (Musora first)
- **Musora** — recent history, the Practice playlist, Floyd, Beatles, #1 hits, and rudiment burns
- **Songsterr** — all saved favorites, in last-viewed order

Every song link opens in a new tab.

## Live page

https://shaftdb.github.io/drum-front/

The page has a `noindex` meta tag and a `robots.txt` that disallows crawlers. It is not meant to be searchable; use the bookmark or this link.

## Update songs later

All song data lives in `data.js` as `window.DRUM_DATA`. You can:

1. Open `data.js`
2. Add or edit objects in `recommendations`, `musoraHistory`, `musoraPlaylists`, or `songsterr`
3. Run `./deploy.sh` (or commit and push) to publish

A song object looks like:

```js
{
  "title": "Come As You Are",
  "artist": "Nirvana",
  "url": "https://app.musora.com/drumeo/songs/transcription/264509",
  "site": "musora",          // musora | songsterr
  "level": "Beginner",       // optional
  "genre": "Rock",           // optional, used by the genre filter
  "group": "90s alt / grunge", // recommendations only
  "reason": "Why this fits."   // recommendations only
}
```

Musora song URLs use `https://app.musora.com/drumeo/songs/transcription/<id>`.
Songsterr URLs use `https://www.songsterr.com/a/wsa/<slug>`.
Playlist URLs use `https://app.musora.com/playlists/<id>`.

## Local preview

Open `index.html` in a browser, or from this folder:

```bash
python3 -m http.server 8765
```

Then visit http://127.0.0.1:8765/
