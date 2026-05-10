# AI截图整理工具

本地运行的桌面端截图管理软件，支持 OCR 文字识别、智能分类、可复制文字。

## 技术栈

- **前端**: React + TypeScript + Vite
- **桌面**: Electron
- **OCR**: Tesseract.js（中英文混合识别）
- **数据库**: SQLite（sql.js，纯 JS 无需编译）
- **UI**: 深色模式，Obsidian/Notion 风格

## 启动

```bash
npm install
npm run dev
```

## 打包

```bash
npm run build
```

打包输出在 `dist-electron/` 目录。

## 功能

- 拖拽/粘贴/选择 导入截图（PNG/JPG/JPEG/WebP）
- OCR 文字识别（中英文）
- 图片上覆盖透明文字层，可直接选择复制
- 自动分类（聊天/代码/游戏/文档/网页/学习资料）
- 全文搜索
- 收藏/删除/重命名/分类修改

## 项目结构

```
screenshot-manager/
├── electron/
│   ├── main.js          # Electron 主进程
│   ├── preload.js       # 预加载脚本（IPC 桥接）
│   └── database.js      # SQLite 数据库层
├── src/
│   ├── main.tsx          # React 入口
│   ├── App.tsx           # 主组件
│   ├── App.css           # 样式（深色主题）
│   ├── types/index.ts    # TypeScript 类型定义
│   ├── utils/categorize.ts # 自动分类逻辑
│   └── components/
│       ├── Sidebar.tsx        # 侧边栏（分类+搜索）
│       ├── ScreenshotList.tsx # 截图列表
│       ├── Preview.tsx        # 图片预览+OCR
│       └── OcrOverlay.tsx     # OCR 文字覆盖层
├── package.json
├── tsconfig.json
└── vite.config.ts
```

## 数据存储

所有数据存储在本地 `%APPDATA%/Electron/images/` 和 `screenshots.db`，无需联网，无需登录。
