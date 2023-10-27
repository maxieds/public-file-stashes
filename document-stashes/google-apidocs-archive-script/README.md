# Directory contents

The system administrators of the MacOS desktop I was using became uneasy at the volume downloads 
(by size, and verbose terminal output, of course) that the handy `httrack` utility was able to 
download from the list of Google Javadoc and unsettling Google developer policy descriptions 
in `base-links.txt` from early April of 2023. The depth on the script and the clever way the 
command enumerates resources leads to very detailed web archives of these site resources including 
HTML text sources, JavaScript references (bon), and many other hidden data exhanges with cross tracking 
sites and cookies (see hierarchy printed below). 
Here's how to run the script on Mac:
```bash
$ brew install httrack
$ chmod +x archive-all-links.sh
$ ./archive-all-links.sh
```
Google Drive has a bug uploading directory contents recursively in a webbrowser that 
preserves the directory structure but omits the file contents beyond one level of depth 
(or it did conveniently earlier this year). A zipped archive that retains at least the directory structure of all 
the internal nasties from these documentation gaffes is in this folder. Other PDF copies of important websites 
saved by themseleves are in the listings. 

## The partial script output directory structure

```bash
$ ls -h -R ./*

-- TODO -- 
```
