#ifndef __JKRFILEFINDER_H__
#define __JKRFILEFINDER_H__

#include "dolphin/types.h"

class JKRArchive;
class JKRArcFinder {
  public:
    JKRArcFinder(JKRArchive*, long, long);
    ~JKRArcFinder();

    void findNextFile(void);
};

class JKRDvdFinder {
  public:
    JKRDvdFinder(char const*);
    ~JKRDvdFinder();

    void findNextFile(void);
};

class JKRFileFinder {
  public:
    ~JKRFileFinder();
};

#endif
