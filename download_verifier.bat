if not exist %HOMEDRIVE%%HOMEPATH%\solipath\download_verifier.exe curl --create-dirs -L "https://github.com/Solipath/Solipath/releases/download/latest-windows_x86_64/download_verifier.exe" -o %HOMEDRIVE%%HOMEPATH%/solipath/download_verifier.exe
%HOMEDRIVE%%HOMEPATH%\solipath\download_verifier.exe %*
