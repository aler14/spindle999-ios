# Spindle999 — iOS

Versione iOS dell'app desktop Spindle999 (creazione video da audio/copertina,
album → video con capitoli/visualizer/thumbnail, restauro audio, download).

Sviluppo **senza Mac**: il codice si scrive su Windows, la compilazione avviene
su un runner macOS di **GitHub Actions**, e l'app si installa sull'iPhone via
**AltStore/SideStore** (sideload con Apple ID gratuito).

## Stato

**Milestone 1** — validare la pipeline build → installazione. L'app mostra solo
una schermata che conferma device e versione iOS. Nessuna funzione ancora.

Roadmap successiva:
1. ✅ M1 — pipeline CI + install (questo)
2. ⏳ M2 — integrare ffmpeg su iOS, primo encode (immagine + audio → video)
3. ⏳ M3 — import da Galleria/File
4. ⏳ M4 — modalità Album (capitoli, visualizer, thumbnail, loudness)
5. ⏳ M5 — restauro audio
6. ⏳ M6 — download (yt-dlp/alternativa)

## Come ottenere l'app (.ipa)

1. Push su `main` (o **Actions → Build iOS → Run workflow**) avvia la build.
2. A build finita: **Actions → ultimo run → Artifacts → `Spindle999-ipa`** → scarica lo zip e estrai `Spindle999.ipa`.
3. Installa l'`.ipa` con AltStore/SideStore (vedi sotto).

## Installazione sull'iPhone (prima volta)

Da fare una volta sola su Windows:
1. Installa **AltServer** (o configura **SideStore**).
2. Collega l'iPhone, accedi col tuo Apple ID gratuito.
3. Apri l'`.ipa` con AltStore → l'app appare nella schermata Home.

> Con Apple ID gratuito l'app va ri-firmata ogni 7 giorni (AltStore/SideStore
> lo fa in automatico). Un account sviluppatore ($99/anno) elimina il limite.

## Build locale (solo su un Mac, opzionale)

```bash
brew install xcodegen
xcodegen generate
open Spindle999.xcodeproj
```
