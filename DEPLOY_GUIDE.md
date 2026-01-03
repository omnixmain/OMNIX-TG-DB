# Cloud Deployment Guide (24/7 Uptime)

## Step 1: Upload Code to GitHub
You have already created the repository: `https://github.com/omnixmain/OMNIX-TG-DB`
I have prepared the files locally. You just need to run this command in your terminal to upload them:

```powershell
git push -u origin master
```

*(You might be asked to sign in to GitHub in a browser window)*.

## Step 2: Deploy to Koyeb (Free Tier)
1.  Create an account on [Koyeb.com](https://www.koyeb.com/).
2.  Click **Create App**.
3.  Select **GitHub** as the source.
4.  Select your repository: `omnixmain/OMNIX-TG-DB`.
5.  In the configuration, look for **Environment Variables**.

## Step 3: Add Variables
You need to add these variables manually in Koyeb (Copy values from your local `fsb.env` file):

| Key | Value |
| :--- | :--- |
| `API_ID` | `33363656` |
| `API_HASH` | `38d674fa3802e2fdeb59817153582225` |
| `BOT_TOKEN` | `7310145375:AAF-aiKBP6yQ8vXM3J28R3m23OLmor0pbaU` |
| `LOG_CHANNEL` | `-1003423730258` |
| `PORT` | `8080` |

## Step 4: Click Deploy
-   Click the **Deploy** button.
-   Wait for a few minutes.
-   Once it says "Healthy" or "Running", your bot is live 24/7!
