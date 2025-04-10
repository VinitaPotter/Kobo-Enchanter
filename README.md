# 📚 Kobo Enchanter

✨ A delightful little tool to toggle the Kobo’s default screensaver on or off using NickelMenu – no reboot required, no KOReader dependencies. Simple, effective, and a touch magical 🪄

---

## **🛠 Requirements**

- A Kobo eReader (tested on Nickel-based models)
- NickelMenu installed and working

---

## **📂 Installation**

1. Download the `adds` folder and rename it to `.adds`
2. Copy the entire `.adds` folder to the root of your Kobo device (the main directory when you connect it via USB).
3. Eject your Kobo safely and wait a moment – NickelMenu will detect the new scripts.
4. You’ll now see **“Toggle Screensaver”** in the NickelMenu 🎉

> **Note:** `.adds` is a hidden folder. You may need to toggle the settings to make the folders visible:
> - On Mac: `Command + Shift + .` (period)
> - On Windows: Open the File Explorer, go to the "View" tab, and check the "Hidden items" box.

---

## **✨ How it Works**

The script toggles the Kobo's book cover screensaver to a custom screensaver by renaming the folder used for its image assets:

- `.kobo/screensaver` ➡️ `.kobo/screensaver_off` (custom screensaver disabled)
- `.kobo/screensaver_off` ➡️ `.kobo/screensaver` (custom screensaver re-enabled)

It’s a clever little flip that Nickel notices instantly!

---

## **⚠️ First-Time Setup**

Before using the toggle:

1. Connect your Kobo via USB.
2. Go to the hidden `.kobo/` directory.
3. If you have a `.kobo/screensaver` folder, rename it to `screensaver_off` manually or create one.
4. Add PNG files for the screensaver image/s you want.  
   Keep the *"Show current read"*  & *"Show book covers full screen"* toggle on (Settings > Energy Saving and Privacy > Sleep and Power).

This ensures the script has something to toggle.

Once set up, you won’t have to think about it again. The toggle will magically handle it for you! 💫

---

## **✅ Notes**

- No restart needed. Changes are immediate.
- Works independently of KOReader or any third-party reading apps.
- NickelMenu required – this won’t show up in your Kobo UI otherwise.
- You can safely delete the script later if needed — it makes no permanent changes.

---

Enjoy toggling your screensaver like a wizard! 🧙‍♀️✨

Questions? Suggestions? Spotted a bug? Create an issue or fork away!
