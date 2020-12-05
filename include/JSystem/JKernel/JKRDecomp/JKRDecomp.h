#ifndef __JKRDECOMP_H__
#define __JKRDECOMP_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRThread/JKRThread.h"

class JKRDecompCommand {
  public:
    JKRDecompCommand();
    ~JKRDecompCommand();
};

class JKRDecomp : public JKRThread {
  public:
    JKRDecomp(long);
    virtual ~JKRDecomp(void);

    static void create(long);
    static void prepareCommand(u8*, u8*, u32, u32, void (*)(u32));
    static void sendCommand(JKRDecompCommand*);
    static void sync(JKRDecompCommand*, int);
    static void orderAsync(u8*, u8*, u32, u32, void (*)(u32));
    static void orderSync(u8*, u8*, u32, u32);
    static void decode(u8*, u8*, u32, u32);
    static void decodeSZP(u8 *, u8 *, u32, u32);
    static void decodeSZS(u8*, u8*, u32, u32);
    static void checkCompressed(u8*);

    /* vt[03] */ virtual void* run(); /* override */
};

#endif
