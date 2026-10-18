# 貢獻指引 (Contributing Guide)

感謝您對「職場霸凌申訴調查程序時限管理系統」的關注與支持！我們非常歡迎社群開發者、公部門人事人員或法務同仁提供寶貴的改進建議與程式碼貢獻。

---

## 📌 貢獻方向

您可以透過以下方式參與本專案：
1. **回報問題（Bug Report）**：回報系統功能異常、時限天數計算偏差或版面跑版問題。
2. **建議新功能（Feature Request）**：提供工作流程改善建議、日曆資料擴充（如未來年份辦公日曆）等。
3. **提交程式碼（Pull Request）**：修正錯誤或實作新特性。
4. **改善文件（Documentation）**：補足或改進 README、法規說明等文件。

---

## 🛠️ 開發與測試流程

1. **Fork 本專案**：將專案 Fork 至您的 GitHub 帳號。
2. **建立分支**：
   ```bash
   git checkout -b feature/your-feature-name
   # 或
   git checkout -b fix/your-bug-fix
   ```
3. **本機開發**：
   - 本專案為純原生前端單一檔案架構（HTML5 / CSS3 / Vanilla JS），無須建置步驟。
   - 直接以瀏覽器開啟 `index.html` 進行修改與功能測試。
   - 請確保**不要引入任何外部第三方依賴或 CDN 資源**，以維護 100% 離線運作與資安要求。
4. **提交變更**：
   - 遵循清晰的 Commit Message 規範（例如 Conventional Commits：`feat: ...`, `fix: ...`, `docs: ...`）。
5. **發起 Pull Request**：
   - 請在 PR 描述中清晰說明變更內容與測試方式。

---

## ⚖️ 行事曆資料維護注意事項

若欲擴充或維護人事行政總處（DGPA）辦公日曆表：
- 資料結構需維持 `YYYY-MM-DD: [isHoliday (0 或 1), "放假節日名稱"]` 格式。
- 請以行政院人事行政總處正式公告之行事曆與政府行政機關辦公日曆表為準。
