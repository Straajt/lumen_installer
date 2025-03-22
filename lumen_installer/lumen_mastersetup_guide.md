
# 🌟 LUMEN MASTERSETUP – Home Assistant Voice Assistant auf dem Raspberry Pi 5

Willkommen zur vollständigen Einrichtung von **Lumen** – deinem trilingualen, smarten Voice Assistant mit Wake Word, lokaler Intent-Erkennung, ChatGPT-Integration und dynamischer Sprachumschaltung.

---

## ✅ Voraussetzungen

- Raspberry Pi 5 mit Home Assistant OS
- Mikrofon über USB oder Klinke angeschlossen
- Media Player (z. B. `media_player.arc`)
- Optional: Home Assistant Cloud oder Amazon Polly API-Key
- Benutzer `person.david` & `person.miska` korrekt eingerichtet

---

## 📦 SCHRITT 1: Add-ons & Basisinstallation

1. **Installiere HACS** (falls noch nicht geschehen)
2. **Installiere folgende Add-ons** über Supervisor oder HACS:
   - `Wyoming OpenWakeWord`
   - `Wyoming Whisper`
   - `Piper` oder `Amazon Polly` (für TTS)
3. **Konfiguriere dein Mikrofon** (z. B. mit `audio recorder`)

---

## 🧠 SCHRITT 2: Pipelines einrichten

Gehe zu `Einstellungen > Sprachassistent > Pipelines`

1. **Pipeline: `slovak_pipeline`**
   - Sprache: `sk-SK`
   - Wake Word: `Hey Lumen` (via Wyoming OpenWakeWord)
   - STT: Whisper
   - TTS: Piper oder Polly (slowakische Stimme)

2. **Pipeline: `english_pipeline`**
   - Sprache: `en-US`
   - Wake Word: `Hey Lumen`
   - STT: Whisper
   - TTS: Amazon Polly (z. B. Joey)

3. **Pipeline: `german_pipeline`**
   - Sprache: `de-DE`
   - STT: Whisper
   - TTS: Amazon Polly (z. B. Hans)

---

## 🎯 SCHRITT 3: Lokale Intents

Importiere die Datei 📥 `lumen_voice_addons_multilang.yaml`

Sie enthält:
- Trilinguale Sprachbefehle (`intents`)
- Beispiele wie `LichtGemütlich`, `StatusFragen`
- Test-Buttons für dein Lovelace Dashboard

---

## 🛒 SCHRITT 4: GPT-Einkaufsliste + Apple Notizen

Importiere 📥 `lumen_gpt_einkaufsliste_webhook.yaml`

- Du kannst sagen: „Hey Lumen, füge Milch und Käse zur Liste hinzu“
- GPT erkennt die Produkte
- Sie werden zur `shopping_list` hinzugefügt
- Per Webhook wird ein Apple Shortcut aufgerufen, der alles in eine geteilte Notiz schreibt

👉 Stelle sicher, dass dein Apple Shortcut Webhook aktiv ist und die URL in `send_to_icloud_shortcut` eingetragen ist.

---

## 💬 SCHRITT 5: Sprachumschaltung basierend auf Anwesenheit

Importiere 📥 `lumen_auto_sprachausgabe.yaml`

Dieses Skript entscheidet:
- **Nur Miska da** → Slowakisch
- **Nur David da** → Deutsch
- **Beide da** → Slowakisch

Sprache wird automatisch für TTS & Pipelines verwendet.

---

## 🔊 SCHRITT 6: Demo & Test

1. Öffne dein Lovelace Dashboard
2. Gehe zu `Sprache` oder `Lumen Voice Test`
3. Tippe auf einen Button oder sag dein Wake Word
4. Beobachte, wie Lumen die Sprache erkennt & passend antwortet

---

## 📁 Alle Dateien zum Download

| Beschreibung                  | Datei                                               |
|------------------------------|-----------------------------------------------------|
| 🔧 Voice Assistant Setup      | `lumen_voice_assistant_setup_pi5.yaml`             |
| 🌍 Multilang Intents + UI     | `lumen_voice_addons_multilang.yaml`                |
| 🛒 Einkaufsliste + iPhone     | `lumen_gpt_einkaufsliste_webhook.yaml`             |
| 💬 Sprachwahl Automatisch     | `lumen_auto_sprachausgabe.yaml`                    |

> 👉 Lade alle YAML-Dateien hoch via Datei-Editor oder `config`-Verzeichnis.

---

## 🧠 Lumen-Tipps

- Alle TTS-Antworten kannst du mit Emojis und Style anpassen 😉
- Die Sprachwahl kann auch zeitbasiert oder über Schalter erfolgen
- Deine Person-Tracker und Zeitfenster (z. B. 7–22 Uhr) kannst du leicht kombinieren

---

**Du bist jetzt bereit für ein Zuhause mit Stil und Verstand. Willkommen bei Lumen.**  
🧠🎙️💡🛒
