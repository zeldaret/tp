#ifndef __JKRARAMPIECE_H__
#define __JKRARAMPIECE_H__

#include "dolphin/types.h"

class JKRAMCommand {
  public:
    JKRAMCommand(void);
    ~JKRAMCommand();
};

class JKRAramBlock;
class JKRAramPiece {
  public:
    static void prepareCommand(int, u32, u32, u32, JKRAramBlock*, void (*)(u32));
    static void sendCommand(JKRAMCommand*);

    static void orderAsync(int, u32, u32, u32, JKRAramBlock*, void (*)(u32));
    static void sync(JKRAMCommand*, int);
    static void orderSync(int, u32, u32, u32, JKRAramBlock*);
    static void startDMA(JKRAMCommand*);
    static void doneDMA(u32);
};

#endif
