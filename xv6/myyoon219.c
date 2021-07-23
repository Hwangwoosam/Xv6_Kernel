#include "types.h"
#include "stat.h"
#include "user.h"

void
loop(int num)
{
	while(1){
		for(int i = 0; i< num; i++){
			printf(1,"  ");
		}
		printf(1,"%d\n",num);
	}

	exit(1);
}

int
main()
{
	int pid[10] ;

	for (int i = 0; i< 10; i++) {
		pid[i] = fork() ;
		if (pid[i] < 0) {
			printf(2,"fork failed\n") ;
		} else if (pid[i] == 0) {
			loop(i) ;
		} else {
			continue ;
		}
	}

	sleep(500) ;
	if (setpriority(getpid(),1) == -1) {
		printf(2,"[MAIN] setpriority error.\n");
		exit(1);
	}

	for (int i = 0; i < 10; i++) {
		if (setpriority(pid[i],1) == -1) {
			printf(2,"[MAIN] pid[%d] setpriority error.\n", i) ;
			exit(1) ;
		}
		sleep(250);
	}
	sleep(10000);
	for (int i = 0; i < 10; i++) {
		kill(pid[i]) ;
		waitpid(pid[i], 0x0, 0) ;
	}
	exit(0) ;
}

