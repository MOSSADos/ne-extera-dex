<img src="images/logo.png" width="150" align="left"/>

## Ne:Extera
*[Licensed under the GNU General Public License v3.0](LICENSE)*

**Fork of re:extera** — plugin for exteraGram that adds ghost mode, deleted message recovery, TTL media preservation, and various other features. Loaded at runtime via DEX injection.

### Credits
- **FOSS recovery**: [@shikaatux](https://github.com/logopek) and [fossSquad](https://github.com/fossSquad/re-extera)
- **Ne:Extera fork**: [@YhellsingY](https://github.com/MOSSADos) | [@rybilov](https://github.com/rybilov)

### Changes in Ne:Extera Fork
- ✨ **Rebranded** to Ne:Extera
- 🛠️ **Bugfixes** in loader (context crash, UI thread safety, dead code removal)
- 🚫 **Auto-updater removed** (DEX downloaded once on first run, no self-overwrite)
- 🎭 **TTL media preservation**: View-once photos/videos stay in chat under spoiler, timer frozen
- ⚙️ **Auto-enable** recommended settings on first run
- 🌐 **Multilingual** UI (EN/RU/UK)

[![Channel](https://img.shields.io/badge/Channel-Telegram-blue.svg)](https://t.me/shikaatuProjectsLog)
[![Download](https://img.shields.io/badge/Download-latest-green.svg)](https://github.com/MOSSADos/ne-extera-dex/releases/latest)

---

### Features

#### 👻 Ghost Mode
Hide online status, typing indicator, read receipts, and story views

#### 🕵️ Spy
- Save deleted messages
- Save self-destructing/TTL messages (stays under spoiler)
- Message history with custom markers
- Track edits

#### 📤 re:forward
Pseudo-forward messages from chats where forwarding is restricted

#### 🚫 Shadowban
Hide specific user's messages or entire dialogs

#### 💎 Local Premium
Unlock premium-like features locally

#### 🔍 Filters
Advanced message filtering with regex support

---

### Screenshots
| | | | |
|---|---|---|---|
| <img src="images/1.jpg" width="140"/> | <img src="images/2.jpg" width="140"/> | <img src="images/3.jpg" width="140"/> | <img src="images/4.jpg" width="140"/> |
| Main menu | Ghost mode | Spy | Other |

---

### Building

**Requirements**
- Android SDK
- JDK 17
- Python 3.x

```bash
git clone https://github.com/MOSSADos/ne-extera-dex.git
cd ne-extera-dex

# Build .plugin loader
python3 loader/build.py

# Build .dex
./gradlew buildDex
```

Output DEX will be at `build/dex/classes.dex`. CI produces builds automatically — grab latest from [Actions](https://github.com/MOSSADos/ne-extera-dex/actions) (dev) or [Releases](https://github.com/MOSSADos/ne-extera-dex/releases) (stable).

---

### Installing

1. Install [exteraGram](https://github.com/exteraSquad/exteraGram) ≥ 12.8.1
2. Download [ne_extera_loader.plugin](https://github.com/MOSSADos/ne-extera/releases/latest/download/ne_extera_loader.plugin)
3. Place in `/sdcard/Android/data/top.qwq2333.exteraGram/files/ExteraConfigs/plugins/`
4. Restart exteraGram
5. The plugin will download and load the DEX automatically

---

### Dev Builds
Latest dev builds are available as CI artifacts. The plugin downloads the appropriate DEX for your Telegram version automatically.

---

### Technical Details

**Package**: `ni.shikatu.ne_extera`  
**Main entry**: `Main.java` → `initAndStart()` / `getInstance().start()`  
**Hook system**: XposedBridge via exteraGram Plugin SDK  
**Database**: Room (`NeExteraDb`)  
**Settings storage**: SharedPreferences (`"ne_extera"`)

**Verified hooks** (exteraGram 12.10.1):
- `ChatActivity.sendSecretMediaDelete(MessageObject)Runnable` — prevent TTL deletion
- `ChatActivity.sendSecretMessageRead(MessageObject, boolean)Runnable` — suppress read receipts
- `ChatMessageCell.measureTime(MessageObject)V` — freeze timer display
- `ChatMessageCell.setMessageObject(...)V` — apply spoiler blur

---

### License

GNU General Public License v3.0

This is a fork of [fossSquad/re-extera](https://github.com/fossSquad/re-extera) under GPL-3.0.  
FOSS recovery by [fossSquad](https://github.com/fossSquad).

See [LICENSE](LICENSE) for full text.

---

### Support

- **Issues**: [GitHub Issues](https://github.com/MOSSADos/ne-extera-dex/issues)
- **Plugin loader issues**: [ne-extera loader repo](https://github.com/MOSSADos/ne-extera/issues)
- **exteraGram**: [Telegram group](https://t.me/exteraGram)

---

Made with ❤️ for the exteraGram community
