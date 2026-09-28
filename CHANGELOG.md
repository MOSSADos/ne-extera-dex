# Changelog - Ne:Extera

All notable changes to this fork from the original re:extera.

## [2.0.0] - 2026-09-28

### Added
- 🔄 **Auto-update system restored**: DEX now updates automatically without user prompt
- 🎨 **New red logo design**: Modern Material Design with "Ne" monogram and ghost icon
- 🗑️ **Custom trash icon messages**: Preview shows "сельский участковый" replying to "фрауд участковый" about Ne:Extera

### Changed
- 📝 **Credits updated**: Removed @bleizix mentions from metadata and README
- 🎨 **Logo redesigned**: New red Material Design style with ghost privacy icon

## [1.0.0] - 2026-09-28

### Added
- ✨ **Rebranded** to Ne:Extera throughout codebase
- 🎭 **TTL media preservation feature**: View-once photos/videos stay in chat under spoiler blur, timer frozen
- ⚙️ **Auto-enable recommended settings** on first run (save deleted messages, save TTL media, etc.)
- 🌐 **Multilingual UI** support (EN/RU/UK) in loader plugin
- 📝 **Enhanced documentation** with verified API signatures

### Changed
- 🚫 **Removed auto-updater system** from loader plugin
  - DEX downloaded once on first run only
  - No self-overwriting of plugin file (preserves fork)
  - Manual update via "Install from file" option
- 📦 **Package renamed**: `ni.shikatu.re_extera` → `ni.shikatu.ne_extera`
- 🏷️ **Branding updated**: All UI strings, logs, and settings changed to Ne:Extera

### Fixed
- 🐛 **Loader context crash**: Fixed `get_last_fragment().getContext()` → `ApplicationLoader.applicationContext`
- 🧵 **UI thread safety**: All `BulletinHelper.show_info` calls wrapped in `AndroidUtilities.runOnUIThread`
- 🧹 **Removed dead code**: `DownloadListener` class, `LOCAL_DEX_PATH` constant, unused imports
- 🔧 **Config persistence**: Fixed `last_error` storage and JSON validation
- ⚡ **Duplicate method call**: Removed redundant `getMethod("initAndStart")` check

### Technical
- Verified all hook signatures against exteraGram 12.10.1 decompiled JAR
- Added fallback `hook_all_methods` for method resolution
- Enhanced logging system with "Copy logs" feature
- GPL-3.0 compliance: Original authors credited in README and source comments

### Credits
Fork based on [fossSquad/re-extera](https://github.com/fossSquad/re-extera)  
Original concept by [@bleizix](https://github.com/bleizix)  
FOSS recovery by [@shikaatux](https://github.com/logopek)

---

## Original re:extera Version History

See [fossSquad/re-extera releases](https://github.com/fossSquad/re-extera/releases) for upstream changelog.
