# راه‌اندازی پروفایل GitHub بهرام

این پوشه باید در یک ریپوزیتوری عمومی با نام دقیق `Bahram-Kuranyi` قرار بگیرد. چون نام ریپو با نام کاربری یکی است، فایل `README.md` روی صفحه‌ی اصلی پروفایل نمایش داده می‌شود.

## روش سریع در Windows PowerShell

### ۱. ابزارهای لازم

اگر `Git` و `GitHub CLI` را نداری، در `PowerShell` اجرا کن:

```powershell
winget install --id Git.Git -e
winget install --id GitHub.cli -e
```

بعد `PowerShell` را ببند و دوباره باز کن.

### ۲. ورود به GitHub

```powershell
gh auth login
```

این گزینه‌ها را انتخاب کن:

1. `GitHub.com`
2. `HTTPS`
3. `Login with a web browser`

### ۳. ساخت و انتشار ریپو

فایل دانلودشده را از حالت `ZIP` خارج کن. داخل پوشه کلیک راست کن و `Open in Terminal` را بزن، سپس:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\setup.ps1 -Publish
```

اسکریپت این کارها را انجام می‌دهد:

- ریپوی محلی را با شاخه‌ی `main` می‌سازد.
- تمام فایل‌ها را `commit` می‌کند.
- ریپوی عمومی `Bahram-Kuranyi/Bahram-Kuranyi` را می‌سازد.
- فایل‌ها را `push` می‌کند.

## اگر ریپو از قبل ساخته شده است

اسکریپت همان ریپو را پیدا می‌کند، `origin` را متصل می‌کند و تغییرات را `push` می‌کند. فایل‌های فعلی آن ریپو را قبل از اجرا بررسی کن تا چیزی را ناخواسته جایگزین نکنی.

## فعال‌کردن contribution snake

پس از اولین `push`:

1. وارد ریپوی `Bahram-Kuranyi` شو.
2. تب `Actions` را باز کن.
3. اگر GitHub درباره‌ی فعال‌سازی workflow پرسید، آن را فعال کن.
4. workflow با نام `Generate contribution snake` را باز کن.
5. `Run workflow` را بزن.
6. یک یا دو دقیقه بعد صفحه‌ی پروفایل را دوباره بارگذاری کن.

این workflow هر روز خودکار اجرا می‌شود و خروجی را در شاخه‌ی `output` به‌روزرسانی می‌کند.

## تنظیمات پیشنهادی پروفایل

در صفحه‌ی `Settings → Public profile` این موارد را کامل کن:

- **Name:** `Bahram Kuranyi`
- **Bio:** `Software Engineer · Full-Stack · AI Builder`
- **Location:** `Germany`
- **LinkedIn:** `https://www.linkedin.com/in/bahramkuranyi/`
- **Website:** آدرس سایت شخصی بعد از انتشار
- **Available for hire:** در صورت تمایل فعال

## شخصی‌سازی بعدی

- وقتی `Atlas App` ریپوی عمومی گرفت، عنوان آن را در بخش `Selected work` لینک کن.
- بعد از انتشار سایت شخصی، یک دکمه‌ی `Portfolio` بالای `README.md` اضافه کن.
- چهار تا شش ریپوی قوی را در پروفایل `Pin` کن؛ پروژه‌های تمرینی ضعیف را `Pin` نکن.
- اگر کارت آمار گاهی لود نشد، مشکل از سرویس خارجی `github-readme-stats` است و کد اصلی خراب نیست.

## ساختار فایل‌ها

```text
Bahram-Kuranyi/
├── .github/
│   └── workflows/
│       └── snake.yml
├── assets/
│   └── hero.svg
├── LICENSE
├── README.md
├── SETUP-FA.md
└── setup.ps1
```
