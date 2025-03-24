#ifndef DEFINE_H
#define DEFINE_H

#include "types.h"

#ifdef __cplusplus
extern "C" {

class JGadget_outMessage {
public:
    typedef void (*MessageFunc)(const char*, int, const char*);

    static void warning(const char*, int, const char*);

    JGadget_outMessage(MessageFunc fn, const char* file, int line);
    ~JGadget_outMessage();

    JGadget_outMessage& operator<<(int param_1) { return *this << (s32)param_1; }
    JGadget_outMessage& operator<<(u16);
    JGadget_outMessage& operator<<(unsigned int);
    JGadget_outMessage& operator<<(u8);
    JGadget_outMessage& operator<<(const char* str);
    JGadget_outMessage& operator<<(s8);
    JGadget_outMessage& operator<<(s32);
    JGadget_outMessage& operator<<(u32);
    JGadget_outMessage& operator<<(const void*);

private:
    MessageFunc mMsgFunc;
    char mBuffer[256];
    char* mWrite_p;
    char* mFile;
    int mLine;
};

#define JGADGET_ASSERTWARN(cond) ((cond) || (false))

#define JGADGET_EXITWARN(cond)                                                                     \
    if (!(cond)) {                                                                                 \
        false;                                                                                     \
        return false;                                                                              \
    }
}
#endif

#endif
