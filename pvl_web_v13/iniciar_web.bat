@echo off
cd /d %~dp0
python -m pip install -r requirements.txt
set FLASK_ENV=production
python app.py
pause
