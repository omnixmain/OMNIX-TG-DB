# TG-FileStreamBot Setup Guide for Windows

This guide will help you set up the Telegram File Stream Bot on your Windows machine.

## Prerequisites

1.  **Telegram Account**: You need a Telegram account.
2.  **Bot Token**: You need to create a bot using `@BotFather`.
3.  **API ID & Hash**: You need to get these from Telegram's developer portal.

## Step 1: Download the Bot

Since you don't have Go installed, the easiest way is to download the pre-built executable.

1.  Go to the [Releases Page](https://github.com/EverythingSuckz/TG-FileStreamBot/releases).
2.  Look for the latest release (not "Pre-release" if possible, but currently mostly pre-releases are available).
3.  Download the **Windows** version. It will usually be named something like `fsb_Windows_x86_64.zip` (for 64-bit Windows).
4.  Extract the contents of the zip file into this folder:
    `C:\Users\OMU\.gemini\antigravity\scratch\TG-FileStreamBot\`
    *(You should see an `fsb.exe` file after extracting)*.

## Step 2: Configure Environment Variables

I have created a file named `fsb.env` in this folder. You need to open it and fill in the missing details.

1.  **Open `fsb.env`** with Notepad or any text editor.
2.  **API_ID & API_HASH**:
    *   Go to [https://my.telegram.org/](https://my.telegram.org/).
    *   Login with your phone number.
    *   Click on "API development tools".
    *   Create a new application (you can fill "App title" and "Short name" with anything).
    *   Copy the `App api_id` and `App api_hash` and paste them into the `fsb.env` file.
3.  **BOT_TOKEN**:
    *   Open Telegram and search for `@BotFather`.
    *   Send the command `/newbot`.
    *   Follow the instructions to name your bot.
    *   Copy the HTTP API Token it gives you and paste it into `fsb.env`.
4.  **LOG_CHANNEL**:
    *   Create a new **Channel** on Telegram (can be Private).
    *   **Add your new bot as an Administrator** to this channel.
    *   Post any message in this channel.
    *   Forward that message to `@MissRose_bot` (or any ID bot like `@ userinfobot`).
    *   Reply to the forwarded message with `/id`.
    *   Copy the ID (it usually starts with `-100`) and paste it into `fsb.env`.

## Step 3: Run the Bot

1.  Open this folder in PowerShell or Command Prompt.
2.  Run the following command:
    ```powershell
    .\fsb.exe run
    ```
3.  If successful, you should see logs indicating the bot has started!

## Troubleshooting

-   **"fsb.exe is not recognized"**: Make sure you downloaded and extracted the `.exe` file into the correct folder.
-   **"Crash or Error"**: detailed logs will usually appear. Double-check your `fsb.env` values.
