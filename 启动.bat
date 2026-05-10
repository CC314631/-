@echo off
cd /d "%~dp0"
echo AI截图整理工具 启动中...
start "" /B npx electron . --no-sandbox
