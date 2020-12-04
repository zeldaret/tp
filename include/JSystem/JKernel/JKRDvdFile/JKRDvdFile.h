#ifndef __JKRDVDFILE_H__
#define __JKRDVDFILE_H__

#include "dolphin/types.h"

class DVDFileInfo;

class JKRDvdFile {
  public:
    JKRDvdFile();
    JKRDvdFile(char const*);
    JKRDvdFile(long);
    ~JKRDvdFile();
    
    void initiate(void);
    void open(char const*);
    void open(long);

    void close(void);
    void readData(void*, long, long);
    void writeData(void const*, long, long);
    void sync(void);
    void doneProcess(long, DVDFileInfo*);
    void getFileSize(void) const;
};

#endif
