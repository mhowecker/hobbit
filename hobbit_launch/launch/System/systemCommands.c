#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
   setuid( 0 );

   int i=0;
   for (i=0; i<argc; i++)
   {
     if (strcmp(argv[i],"updateGlobal")==0) { system("apt-get update && apt-get upgrade -y"); } else
     if (strcmp(argv[i],"shutdown")==0) { system("shutdown -H -t 00"); } else
     if (strcmp(argv[i],"restart")==0) { system("shutdown -r -t 00"); } 
   }

   return 0;
}
