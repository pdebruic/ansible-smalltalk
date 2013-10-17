"copied from monty's work here: https://github.com/MagLev/maglev-topaz-scripts"
set gemstone seaside user DataCurator password swordfish
login
run
|autoCommit autoMigrate|
autoCommit:= MCPlatformSupport autoCommit.
autoMigrate:= MCPlatformSupport autoMigrate.
MCPlatformSupport autoCommit: true.
MCPlatformSupport autoMigrate: true.

Gofer new
        squeaksource: 'MetacelloRepository';
        package: 'ConfigurationOfSeaside30';
"        package: 'ConfigurationOfMagritte2';
        package: 'ConfigurationOfPier2';
        package: 'ConfigurationOfPierAddOns2';"
        load.

MCPlatformSupport commitOnAlmostOutOfMemoryDuring: [
        ((Smalltalk at: #ConfigurationOfSeaside30) project version: '{{seaside_version}}') load.
"
not loading pier or magritte now

        (Smalltalk at: #ConfigurationOfMagritte2) project latestVersion load.
        (Smalltalk at: #ConfigurationOfPier2) project latestVersion load.
        (Smalltalk at: #ConfigurationOfPierAddOns2) project latestVersion load: 'Pier-Setup'.
"

        "load the fastcgi adaptor"
        Gofer project load: 'Seaside30' group: 'Seaside-Adaptors-FastCGI'.
       
].
System commitTransaction.
(Smalltalk at: #WAGemStoneRunSeasideGems) default
        name: 'FastCGI';
        adaptorClass: (Smalltalk at: #WAFastCGIAdaptor);
        ports: #().


MCPlatformSupport autoCommit: autoCommit.
MCPlatformSupport autoMigrate: autoMigrate.
System commitTransaction.
%
logout
