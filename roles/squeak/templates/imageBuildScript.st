Installer squeaksource
    project: 'MetacelloRepository';
    addPackage: 'ConfigurationOfMetacello';
    install.
(Smalltalk at: #ConfigurationOfMetacello) load.

Installer squeaksource
    project: 'MetacelloRepository';
    addPackage: 'ConfigurationOfSeaside30';
    install.
(Smalltalk at: #ConfigurationOfSeaside30) load.

"leave this as it renames the image, saves, and quits"
Smalltalk saveAs: '{{finished_image_name}}'.
Smalltalk snapshot: true andQuit: true.
