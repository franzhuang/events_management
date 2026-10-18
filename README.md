# 職場霸凌申訴調查程序時限管理系統
### Workplace Bullying Complaints Timeline & Deadline Management System

[![Zero Dependencies](https://img.shields.io/badge/Dependencies-0%20(Pure%20Vanilla)-brightgreen.svg)](#技術規格)
[![Privacy First](https://img.shields.io/badge/Privacy-100%25%20Offline%20%2F%20Local%20Only-blue.svg)](#資訊安全與隱私承諾)
[![DGPA Calendar](https://img.shields.io/badge/Calendar-DGPA%202025--2027-orange.svg)](#核心功能特色)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

專為公務機關、事業單位及學校設計的**純前端、零依賴、純本機離線運作**之「職場霸凌申訴調查程序法定時限管理系統」。

無須建置伺服器、無須資料庫，單一 HTML 檔案即可直接在瀏覽器中運行。內建行政院人事行政總處（DGPA）辦公日曆表，能自動精準扣除國定假日、補假日與週休二日，嚴格把關各個法定時限節點，確保調查程序合法合規。

---

## 🌟 核心功能特色

### 1. 🛡️ 100% 離線運作與極致個資防護
- **零外部網路請求**：無引入任何第三方 CDN、外部字體或分析追蹤代碼，徹底斷網亦可流暢使用。
- **機密資料不出本機**：申訴案件內容與個人資料僅保存在使用者硬碟或瀏覽器本機儲存區，杜絕公部門機敏個資外洩風險。

### 2. 📅 內建人事行政總處（DGPA）辦公日曆（2025–2027）
- 內建台灣官方 2025 年、2026 年至 2027 年人事行政總處辦公日曆。
- 自動識別補行上班日、彈性放假日、民俗節日及紀念日，精準計算申訴審查與調查時限工作天。

### 3. ⏱️ 申訴調查程序全生命週期時限管制
- **受理審查階段**：申訴提出後法定工作天倒數審查（確認是否符合受理要件）。
- **調查程序階段**：立案後法定調查時限（2 個月）、延長調查管制（得延長 1 個月）。
- **結案與救濟階段**：調查結果通知、當事人申覆期滿時限提醒。
- **狀態標籤管理**：支援「受理審查中」、「已受理」、「不予受理」、「已結案」即時切換與案件篩選。

### 4. 🗺️ 未完成案件「時間地圖」（Timeline Map）
- 視覺化橫向甘特圖/時限線圖總覽，集中列出所有進行中案件。
- 支援 X 軸日期與 Y 軸案件資訊懸停放大聚焦，掌控多案件時限排程。

### 5. 📸 一鍵生成時間軸流程圖至剪貼簿
- 案件詳細頁面具備高解析度 SVG 響應式進度時間軸。
- 點擊「📷 相機」按鈕，系統直接將時程圖渲染成高品質 PNG 寫入系統剪貼簿，可直接在公文簽呈、Word 報告或 Email 中按 `Ctrl + V` 貼上。

### 6. 💾 雙軌儲存與本機檔案同步 (Dual Persistence)
- **檔案系統 API (File System Access API)**：可直接連結掛載本機檔案（如 `霸凌申訴案件.json`），即時讀寫，免去手動上傳下載麻煩。
- **本機快取與容錯匯出**：IndexedDB / LocalStorage 雙重保護，並支援一鍵手動儲存、另存新檔與 JSON 匯入匯出備份。

### 7. 🖨️ 友善列印與 PDF 匯出
- 針對 A4 版面最佳化的列印 CSS 樣式，可一鍵產生整潔排版的案件進度摘要表或匯出為 PDF 存檔。

---

## 🚀 快速開始

本系統為純靜態單檔網頁架構，**無需安裝 Node.js、Python 或任何後端環境**。

### 方式一：直接雙擊開啟（推薦本機使用）
1. 下載或複製本專案至本機電腦：
   ```bash
   git clone https://github.com/franzhuang/events_management.git
   cd events_management
   ```
2. 直接使用現代瀏覽器（建議使用 **Google Chrome** 或 **Microsoft Edge**）開啟 [`index.html`](index.html)。
3. 即可立即開始新增與管理申訴案件！

### 方式二：靜態伺服器託管（內部網路 / GitHub Pages）
- 若欲在機關內部區域網路共用，可放置於任意靜態網頁伺服器（Nginx, Apache, Caddy 等）。
- 亦可直接啟用 GitHub Pages 託管作為線上工具使用。

---

## 💻 瀏覽器相容性

| 瀏覽器 | 基礎功能 (查看/新增/匯出) | 本機硬碟檔案即時同步 (File System Access API) |
| :--- | :---: | :---: |
| **Google Chrome** (86+) | ✅ 完全支援 | ✅ 支援 |
| **Microsoft Edge** (86+) | ✅ 完全支援 | ✅ 支援 |
| **Brave / Opera** | ✅ 完全支援 | ✅ 支援 |
| **Mozilla Firefox** | ✅ 完全支援 | ⚠️ 改為 LocalStorage + JSON 手動下載 |
| **Apple Safari** | ✅ 完全支援 | ⚠️ 改為 LocalStorage + JSON 手動下載 |

> **提示**：若瀏覽器不支援 File System Access API，系統會自動降級為瀏覽器快取儲存，並提供一鍵「下載/另存紀錄檔」備份，資料依然完整安全。

---

## 📂 專案檔案結構

```text
events_management/
├── .github/                   # GitHub 議題與 PR 範本
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md
│   │   └── feature_request.md
│   └── PULL_REQUEST_TEMPLATE.md
├── .editorconfig              # 程式碼格式與縮排設定
├── .gitignore                 # Git 排除清單（自動忽略個人案件資料與暫存檔）
├── CONTRIBUTING.md            # 開源貢獻與協作指引
├── LICENSE                    # MIT 開源授權條款
├── README.md                  # 專案詳細說明文件
├── SECURITY.md                # 資訊安全政策與隱私說明
└── index.html                 # 系統核心單一檔案（HTML5 + CSS3 + Vanilla JS）
```

---

## 🔒 資訊安全與隱私承諾

1. **零追蹤**：無 Google Analytics、無任何 Cookie 追蹤器或第三方 SDK。
2. **本機隔離**：`.gitignore` 預設排除 `*.json` 與個人案件檔案（如 `霸凌申訴案件.json`），確保在進行 Git 版本控制與發布時不會意外推送任何機密案件資料。
3. **公開透明**：所有業務邏輯與法規工作天計算公式全數以純前端 JavaScript 於單一檔案中開源呈現，可受機關資安稽核檢驗。

---

## 🤝 參與貢獻

歡迎提出 Issue 或提交 Pull Request！
詳細貢獻指引請參閱 [CONTRIBUTING.md](CONTRIBUTING.md)。

---

## 📄 授權條款

本專案採用 [MIT License](LICENSE) 開源授權。
您可以自由使用、修改及散布本專案，詳見 LICENSE 檔案。
