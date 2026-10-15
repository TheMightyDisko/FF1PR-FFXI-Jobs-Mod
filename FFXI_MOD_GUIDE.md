# Final Fantasy XI Starting Jobs Mod for FF1 Pixel Remaster
## *Vana'diel Edition — 6 Starting Jobs, TP Charges, and Artifact Armor*

Welcome to the **Final Fantasy XI Starting Jobs Mod** for **Final Fantasy I Pixel Remaster (PC)**! This mod rebuilds FF1's starting classes and mechanics into the iconic six jobs of Vana'diel.

---

## 🌟 Key Features

1. **The Six Iconic Vana'diel Starting Jobs**:
   * **Warrior (WAR)**: Hume Male — heavy armor, great axes, frontline juggernaut.
   * **Thief (THF)**: Mithra Female — swift daggers, high evasion, critical burst, and Treasure Hunter.
   * **Monk (MNK)**: Galka Male — titanic HP, bare-fist martial arts, and self-purification.
   * **Red Mage (RDM)**: Elvaan Male — fencing, en-spells, spikes, Phalanx, Refresh, and Fast Cast.
   * **White Mage (WHM)**: Hume Female — divine healing, Protectra, Shellra, and Holy.
   * **Black Mage (BLM)**: Tarutaru Male — all 6 elemental tiers, dark siphons, and Ancient Magic.

2. **Artifact Armor (AF1) / Level 75 Cap Promotion**:
   * Presenting the Rat's Tail to King Bahamut at the Citadel of Trials elevates the heroes into their legendary **Artifact Armor (AF1)** tier:
     * *Fighter's Lorica & Mask* (WAR) $\rightarrow$ Unlocks **Steel Cyclone**
     * *Temple Cyclas & Crown* (MNK) $\rightarrow$ Unlocks **Asuran Fists**
     * *Rogue's Vest & Armlets* (THF) $\rightarrow$ Unlocks **Shark Bite**
     * *Duelist's Chapeau & Tabard* (RDM) $\rightarrow$ Unlocks **Savage Blade**
     * *Healer's Briault & Duckbills* (WHM) $\rightarrow$ Unlocks **Hexa Strike & Curaga IV**
     * *Wizard's Petasos & Coat* (BLM) $\rightarrow$ Unlocks **Ancient Magic: Freeze, Burst, Flare**

3. **FFXI-Style TP / Charge System**:
   * **Tier 1 (Focus / Job Abilities)**: Instant combat utility (*Provoke, Berserk, Boost, Chakra, Sneak Attack, Steal, Divine/Elemental Seal, Fast Cast, Convert*).
   * **Tier 2 & 3 (100% & 200% TP Weapon Skills)**: High-impact physical and elemental techniques (*Shield Bash, Combo, Wasp Sting, Raging Axe, Raging Fists, Viper Bite, Chi Blast*).
   * **Tier 8 (2-Hour SP Abilities)**: Legendary emergency trump cards (*Mighty Strikes, Hundred Fists, Perfect Dodge, Chainspell, Benediction, Manafont*).

---

## 📦 Installation Instructions

### Option 1: 1-Click PowerShell Installer (Recommended)
Open PowerShell in this directory and run:
```powershell
powershell -ExecutionPolicy Bypass -File .\Install-FFXIMod.ps1
```
The script will automatically detect your Steam or Xbox FF1 PR directory and prompt you to install via **Memoria (Option 1)** or **Magicite (Option 2)**.

### Option 2: Manual Memoria Installation
Copy the folder:
`c:\Users\james\OneDrive\Documents\Projects\Antigravity\RPG Mod\FFXI_Jobs\Memoria\FINAL FANTASY_Data\StreamingAssets\Assets`
Directly into your game's directory:
`FINAL FANTASY PR\FINAL FANTASY_Data\StreamingAssets\`

Ensure your `Assets.cfg` in `BepInEx\config\Memoria.FFPR\` has:
```ini
[Assets]
ExportEnabled = false
ImportEnabled = true
ImportText = true
ImportTextures = true
```

---

## ⚔️ Complete Ability & Spellbook Reference

| Tier / Level | Warrior (WAR) | Monk (MNK) | Thief (THF) | Red Mage (RDM) | White Mage (WHM) | Black Mage (BLM) |
| :---: | :--- | :--- | :--- | :--- | :--- | :--- |
| **Tier 1** *(JA / Focus)* | Provoke, Berserk | Boost, Chakra | Sneak Attack, Steal | Fast Cast, Enfire | Cure, Dia | Fire, Stone |
| **Tier 2** *(100% TP)* | Defender, Shield Bash | Focus, Combo | Flee, Wasp Sting | Protectra | Banish | Blizzard, Thunder |
| **Tier 3** *(200% TP)* | Warcry, Raging Axe | Dodge, Chi Blast | Trick Attack, Shadowstitch | Cura | Paralyna | Aero, Water |
| **Tier 4** *(Advanced)* | Sturmwind | Raging Fists | Viper Bite | Convert, Phalanx | Curaga, Raise | Drain |
| **Tier 5** *(Mastery)* | — | — | — | Refresh, Haste, Slow | Curaga II | Firaga, Blizzaga, Thundaga, Aspir |
| **Tier 6** *(High End)* | — | Spinning Attack | — | Gravity | Shellra, Holy | Quake, Flood |
| **Tier 7** *(AF Master)* | **Steel Cyclone** | **Asuran Fists** | **Shark Bite** | **Savage Blade** | **Hexa Strike**, Curaga IV, Arise | **Freeze, Burst, Flare** |
| **Tier 8** *(2-Hour SP)* | **Mighty Strikes** | **Hundred Fists** | **Perfect Dodge** | **Chainspell** | **Benediction** | **Manafont** |

---

## 🛡️ Vana'diel Equipment Affinities & Stat Progression

* **Warrior (WAR)**: A+ Strength, A+ Vitality, High HP. Focus on Heavy Plate, Chainmail, Haubergeon, and Great Axes.
* **Monk (MNK)**: S+ Vitality & HP, A Strength. Bare-fist scaling damage, Gi, Headbands, Kenpogi, and Cesti.
* **Thief (THF)**: S+ Agility & Luck, High Evasion. Daggers, Shortswords, Subligar, Leaping Boots, and Scorpion Harness.
* **Red Mage (RDM)**: Balanced versatility across all attributes. Rapiers, Bucklers, Doublets, and Duelist's Chapeau.
* **White Mage (WHM)**: S+ Spirit (MND) & Magic Defense. Clubs, Staves, Robes, and Vermillion Cloak.
* **Black Mage (BLM)**: S+ Intelligence (INT) & MP Charges. Staves, Daggers, Silk Robes, and Wizard's Petasos.
