#ifndef __JKRFILEFINDER_H__
#define __JKRFILEFINDER_H__

#include "dolphin/types.h"

class JKRArchive;
class JKRArcFinder : public JKRFileFinder {
  public:
    JKRArcFinder(JKRArchive*, long, long);
    virtual ~JKRArcFinder();

    virtual void findNextFile(void);
};

class JKRDvdFinder : public JKRFileFinder {
  public:
    JKRDvdFinder(char const*);
    virtual ~JKRDvdFinder();

    virtual void findNextFile(void);
};

class JKRFileFinder {
  public:
    JKRFileFinder();
    virtual ~JKRFileFinder();

    virtual void findNextFile(void) = 0;
};

#endif
