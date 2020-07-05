@echo off
set _SCRIPT_PATH=%~dp0

set var=%1

if exist %var%.pptx (
if exist %var%.bak.pptx (del %var%.bak.pptx)
ren %var%.pptx %var%.bak.pptx
)

if exist %var:~0,-4%.pptx (
if exist %var:~0,-4%.bak.pptx (del %var:~0,-4%.bak.pptx)
ren %var:~0,-4%.pptx %var:~0,-4%.bak.pptx
)

Rscript %_SCRIPT_PATH%rmd-ppt.R %1

if exist %var%.pptx (start %var%.pptx) else (start %var:~0,-4%.pptx)
