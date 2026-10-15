# Final Fantasy XI Starting Jobs Mod for Final Fantasy I Pixel Remaster
### *Vana'diel Edition: 6 Foundational Jobs, Tactical Charges, and Artifact Armor (AF1)*

[![Platform: PC](https://img.shields.io/badge/Platform-Steam%20%7C%20Xbox%20PC-blue.svg)](https://store.steampowered.com/)
[![Game: FF1 Pixel Remaster](https://img.shields.io/badge/Game-Final%20Fantasy%20I%20Pixel%20Remaster-red.svg)](https://finalfantasypixelremaster.square-enix-games.com/)
[![Engine: BepInEx 6 + Memoria](https://img.shields.io/badge/Engine-BepInEx%206%20%7C%20Memoria.FF1-brightgreen.svg)](https://github.com/Albeoris/Memoria.FFPR)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

This total conversion overhaul replaces the starting jobs and mechanics of **Final Fantasy I Pixel Remaster** with the six foundational jobs of **Final Fantasy XI: Online (Vana'diel)**.

Every job is faithfully rebuilt around Vana'diel's iconic races, battle mechanics, signature Job Abilities (JAs), Weapon Skills (WS), 2-Hour Super Abilities (SP), and Level 75 Artifact Armor (AF1) tier promotions.

---

## 🌟 Key Features

### 1. The Six Starting Vana'diel Jobs
* **Warrior (WAR) — Hume Male**: Heavy armor frontline juggernaut wielding battle axes. Draws enemy aggression with *Provoke*, sacrifices defense for devastating raw power with *Berserk*, and activates *Mighty Strikes* for guaranteed critical destruction.
* **Monk (MNK) — Galka Male**: Titanic HP martial artist fighting with bare fists and knuckles. Channels inner chi with *Boost*, purifies flesh of wounds and status ailments with *Chakra*, and activates *Hundred Fists* to double martial hit counts into a nonstop flurry of strikes.
* **Thief (THF) — Mithra Female**: Nimble shadow stalker wielding swift daggers. Guarantees lethal critical damage with *Sneak Attack*, pilfers treasure and items with *Steal*, and reaches 100% evasion against all physical strikes with *Perfect Dodge*.
* **Red Mage (RDM) — Elvaan Male**: Versatile battlemage wielding fencing rapiers and shields. Enchants weapons with living fire via *Enfire*, accelerates turn speed with *Fast Cast*, and activates *Chainspell* for relentless continuous casting.
* **White Mage (WHM) — Hume Female**: Master of divine curative light. Wields *Cure*, *Dia*, *Banish*, *Protectra*, and *Curaga*, backed by *Benediction* for instantaneous full party restoration.
* **Black Mage (BLM) — Tarutaru Male**: Arcane destruction incarnate. Commands all 6 elements of Vana'diel (*Fire*, *Stone*, *Thunder*, *Blizzard*, *Water*, *Aero*) and channels infinite mana with *Manafont*.

---

### 2. Tactical Ability Engine & 0 Gil Shop Acquisition
Physical jobs acquire their ability scrolls and manuals directly from town shops (starting in Corneria) at **0 Gil / Free cost**:
* **Provoke** (WAR / PLD) — 0 Gil
* **Berserk** (WAR / PLD) — 0 Gil
* **Mighty Strikes** (WAR / PLD 2-Hour SP) — 0 Gil
* **Boost** (MNK / MNK2) — 0 Gil
* **Chakra** (MNK / MNK2) — 0 Gil *(custom golden chi-burst aura, no angels)*
* **Hundred Fists** (MNK / MNK2 2-Hour SP) — 0 Gil
* **Sneak Attack** (THF / NIN) — 0 Gil
* **Steal** (THF / NIN) — 0 Gil
* **Perfect Dodge** (THF / NIN 2-Hour SP) — 0 Gil
* **Fast Cast** (RDM / RDM2) — 0 Gil
* **Enfire** (RDM / RDM2) — 0 Gil
* **Chainspell** (RDM / RDM2 2-Hour SP) — 0 Gil

In combat, physical abilities cost **0 MP / charges**, allowing tactical, responsive combat.

---

### 3. Level 75 Cap Promotion: Artifact Armor (AF1)
Presenting the Rat's Tail to King Bahamut at the Citadel of Trials elevates the heroes into their legendary **Level 75 Artifact Armor** forms:
* **Fighter's Lorica & Mask** (WAR) $\rightarrow$ Unlocks **Steel Cyclone** & Great Axes.
* **Temple Cyclas & Crown** (MNK) $\rightarrow$ Unlocks **Asuran Fists** & Counterstance.
* **Rogue's Vest & Armlets** (THF) $\rightarrow$ Unlocks **Shark Bite** & Triple Attack.
* **Duelist's Chapeau & Tabard** (RDM) $\rightarrow$ Unlocks **Savage Blade**, Refresh & Phalanx.
* **Healer's Briault & Duckbills** (WHM) $\rightarrow$ Unlocks **Hexa Strike**, Arise & Curaga IV.
* **Wizard's Petasos & Coat** (BLM) $\rightarrow$ Unlocks **Ancient Magic: Freeze, Burst, Flare**.

---

## 📦 Installation Instructions

### Option 1: 1-Click PowerShell Installer (Recommended)
1. Download or clone this repository.
2. Open PowerShell in this folder and run:
```powershell
powershell -ExecutionPolicy Bypass -File .\Install-FFXIMod.ps1
```
The installer automatically detects your game directory (Steam or Xbox PC / Microsoft Store), installs the patched Memoria engine (with cutscene freeze fixes), deploys all mod data, and activates mod asset importing.

---

### Option 2: Manual Installation
1. Ensure **BepInEx 6 (IL2CPP 64-bit)** is installed in your game folder.
2. Copy `FFXI_Jobs/BepInEx/plugins/Memoria.FF1.dll` to your game's `BepInEx/plugins/` directory *(replaces the unpatched DLL to fix modern FF1 PR movement/cutscene crashes)*.
3. Copy the contents of `FFXI_Jobs/FINAL FANTASY_Data/StreamingAssets/Assets/` into your game's `FINAL FANTASY_Data/StreamingAssets/Assets/` directory.
4. Ensure `BepInEx/config/Memoria.FFPR/Assets.cfg` has:
```ini
[Assets]
ExportEnabled = false
ImportEnabled = true
ImportText = true
ImportTextures = true
```

---

## 📁 Repository Structure

```
├── BepInEx/                               # BepInEx configuration and patched plugins
│   ├── config/Memoria.FFPR/Assets.cfg     # Master asset import configuration
│   └── plugins/
│       ├── Memoria.FF1.dll                # Patched Memoria engine (cutscene crash fix)
│       └── Newtonsoft.Json.dll            # JSON serialization dependency
├── FFXI_Jobs/                             # Core mod distribution package
│   ├── BepInEx/                           # Standalone BepInEx drop-in files
│   └── FINAL FANTASY_Data/                # StreamingAssets mod injection tree
│       └── StreamingAssets/Assets/GameAssets/Serial/Data/
│           ├── Master/                    # Modded CSV database tables
│           │   ├── ability.csv            # 112 abilities (0 Gil, 0 MP cost, FFXI attributes)
│           │   ├── character_status.csv   # Starting charge pools for physical jobs
│           │   ├── content.csv            # Content-to-ability mapping
│           │   ├── growth_curve.csv       # Level 1-50 tactical charge progression
│           │   ├── magic.csv              # FFXI elemental and curative magic
│           │   └── product.csv            # Corneria Magic shop free ability manuals
│           ├── Message/                   # English localization (descriptions, names)
│           │   └── system_en.txt
│           └── MessageXbox/               # Xbox PC localization
│               └── system_en.txt
├── FFXI-Job-Mod-FF1PR-v1.0.zip            # Pre-packaged ready-to-extract release archive
├── Install-FFXIMod.ps1                    # 1-Click automated installation script
├── FFXI_MOD_GUIDE.md                      # Comprehensive job & ability documentation
└── README.md                              # This file
```

---

## 🛠️ Engine & Compatibility Notes

* **Engine:** Built for **Memoria.FFPR (IL2CPP)** and **BepInEx 6 win-x64**.
* **Modern FF1 PR Compatibility Fix:** Square Enix's May 2025 update removed `Last.Management.ResourceManager.DestroyGroupAsset` and altered `CommonPopup.UpdateCommand`. This mod includes a patched `Memoria.FF1.dll` with an IL-level bypass on `FieldMap_UpdatePlayerStatePlay.Prefix`, preventing player movement freezes after the opening cutscene.
* **Platform Compatibility:** Tested and verified on **Xbox App / Microsoft Store PC** and fully compatible with **Steam**.

---

## 📜 Credits & Acknowledgments
* **Square Enix**: Final Fantasy I Pixel Remaster & Final Fantasy XI.
* **Memoria.FFPR Team**: For the open-source FFPR modding framework.
* **BepInEx Team**: For the Unity IL2CPP modding backend.
