Ubuntu/Docker mit LAMP
-----------------------

### Übersicht 

    +---------------------------------------------------------------+
    !                                                               !	
    !    +---------------------+                                    !
    !    ! LAMP Server         !                                    !       
    !    +---------------------+                                    !
    !                                                               !	
    ! Container                                                     !	
    +---------------------------------------------------------------+
    ! Container-Engine: Docker                                      !	
    +---------------------------------------------------------------+
    ! Gast OS: Ubuntu 16.04                                         !	
    +---------------------------------------------------------------+
    ! Hypervisor: VirtualBox                                        !	
    +---------------------------------------------------------------+
    ! Host-OS: Windows, MacOS, Linux                                !	
    +---------------------------------------------------------------+
    ! Notebook - Schulnetz 10.x.x.x                                 !                 
    +---------------------------------------------------------------+
	
### Beschreibung LAMP
    
Ubuntu/Docker VM mit LAMP Debian Docker Image zu Testzwecken.

Image builden:

	cd /vagrant/lamp
	docker build -t lamp .
	
Container starten, Port 80 von Gast OS an Dockercontainer binden, mit Terminal verbinden:

	docker run -ti -p 80:80 lamp

Services im Dockercontainer starten:
        
	service mysql start
	service apache2 start
	
und prüfen ob die Prozesse gestart sind:

	ps -ef

und am vorgesehenen Port lauschen:

	ss -tulpen

auf Host OS Browser starten und nacheinander folgende URLs aufrufen:

	http://192.168.60.101
	http://192.168.60.101/index.php
	http://192.168.60.101/info.php		
