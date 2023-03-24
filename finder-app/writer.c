#include <stdio.h>
#include <syslog.h>
#include <string.h>
int main(int argc, char *argv[]){
	openlog(NULL,LOG_PID,LOG_USER);
	if(argc<3){
        syslog(LOG_ERR,"error");
        closelog();
        return 1;
        }
	FILE * f;
	f=fopen(argv[1],"wb");
	fwrite(argv[2], 1, strlen(argv[2]), f);
	syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
	closelog();
	fclose(f);
	return 0;
}
