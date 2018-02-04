# Event badges
This script helps to generate unique badges for visitors of your event fast &amp; convinient (200 badges took a minute)

![Badge](https://imgur.com/1Mf581u.png)

## Description
This script adds name(s) of participants to your badges. It requires imagemagick to be installed.

## HOW-TO

0) Install git if you don't already and clone this repo; then enter the directory.
```
sudo apt install git # ubuntu
git clone https://github.com/sxiii/eventbadges
cd eventbadges
```
1) Prepare the TEXT file with name "good.csv" which consist of the following:
```
DenFFFFFIvanovFFFFF@fakesnowden
JohnFFFFFConnorFFFFF@johnconnor
```
Use name, then 5 letter F as separator, then surname and 5 "F"s, then telegram username or other info.

`NameFFFFFSurnameFFFFF@telegramusername`
For each text row in file, separate badge will be created.

2) Prepare the image without name on it.

3) Edit this config (below) to fit your image. You will have to do multiple try-outs to understand if you match the size and place well. 

Samples of badges are included in this repo.

4) Run ./makebadges.sh each time and view the results!

5) Make an issue on github if you have any problems, comments, or commit if you like to improve it. Thanks.

## Description of variables
* **x** - X location of the name (horizontal), in pixel
* **y** - Y location of the name (vertical), in pixel
* **sourcefile** - the source layout (model) of badge (without names on it) filename
* **gravity** - this makes everything centered
* **stroke** - black stroke
* **filename** - the source file with names

## Badge sample
![Photo](https://imgur.com/EfLvSNZ.png)

## Improving the project (plans)
* Make the source include badge category (jury, participant, speaker, organiser, administration etc) and edit script to support this metadata
* Make the script go inside the dirs and build badges according to categories
* Do some GUI preview of badges
* GUI badges constructor (add your logo, text placement etc.)

## Main project files
**Filename** | **Description**
| - | - |
**[[README.md]]** 	  | This file
**b.png** 	      | Source/current badge layout. Will be used by generator
**good.csv** 	    | Source/current badge texts. Will be used by generator
**makebadges.sh** |The script of badge generator itself

## Example badge files
**Filename** | **Description**
| - | - |
**jury.png**          | Example jury badge (source png)
**participant.png** 	| Example participant badge (source png)
**speaker.png** 	    | Example speaker badge (source png)
**sponsor.png** 	    | Example sponsor badge (source png)
**staff.png** 	      | Example stuff badge (source png)
**volunteer.png**     | Example volunteer badge (source png)
**sources-badges-xcf.tar.gz**  | Badge source files in XCF (GIMP) format
**result_Den\nIvanov\n@fakesnowden.png** |	Ready file example

