# Cloud Deployment Guide (24/7 Uptime)

## Step 1: Upload Code to GitHub
(Already Done)

## Step 2: Deploy to Koyeb
(Already Done)

## Step 3: Configure Environment Variables
(Already Done)

## Step 4: Fix Health Check & Stream Link (CRITICAL)
Your logs show the bot is running on port **8080**, but Koyeb is checking port **8000**.
Also, the "Stream Link" is using a local IP.

### Fix 1: Change Health Check Port
1.  Go to **Settings** -> **Health Checks**.
2.  Change the **Port** from `8000` to `8080`.
3.  Save.

### Fix 2: Set the HOST Variable
1.  **Find your App URL**:
    *   On your Koyeb Dashboard, copy your app link (e.g., `https://omnix-tg-db.koyeb.app`).
2.  **Update Settings**:
    *   Go to **Settings** -> **Environment Variables**.
    *   Click **Add Variable**.
    *   **Key**: `HOST`
    *   **Value**: Paste the link you copied (e.g., `https://omnix-tg-db.koyeb.app`).
    *   **Save & Redeploy**.
