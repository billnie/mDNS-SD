#ifndef hexdump_h
#define hexdump_h

#include <stdio.h>
//#include <SYS\TIMEB.H> //windows加入此头文件

#ifdef __cplusplus
extern "C"
{
#endif

    void hexDump (const char *desc,void *addr,int len);

//andriod hex dump
    void ahexDump(const char *desc,const  void *addr, int len);

char*   log_Time(void);
    char* gettmpfile(char *postfix);
    FILE * openfile(const char *filename);
    int writefile(const void *addr, int len, FILE * file);
    int closefile(FILE * file);

#ifdef __cplusplus
}
#endif



#endif /* hexdump_h */