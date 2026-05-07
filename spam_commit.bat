@echo off
for /l %%i in (1,1,50) do (
  echo commit ke-%%i %random% >> commit_log.txt
  git add .
  git commit -m "chore: commit %%i"
  echo Done %%i/50
)

git push origin main
pause