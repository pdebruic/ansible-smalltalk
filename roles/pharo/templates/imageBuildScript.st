Gofer new
    squeaksource: 'MetacelloRepository';
    package: 'ConfigurationOfSeaside30';
    load.
[(Smalltalk at: #ConfigurationOfSeaside30) load]
       on: MCMergeOrLoadWarning do: [ :warning | 
                Transcript crShow: 'Ignoring with Load anyway ', warning printString. 
                warning resume: true ]. 

"leave this as it renames the image, saves, and quits"
Smalltalk saveAs: '{{finished_image_name}}'.
Smalltalk snapshot: true andQuit: true.
