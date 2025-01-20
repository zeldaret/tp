#ifndef JORSERVER_H
#define JORSERVER_H

#include "JSystem/JHostIO/JORMContext.h"
#include "JSystem/JHostIO/JHIComm.h"
#include "JSystem/JGadget/linklist.h"
#include "JSystem/JUtility/JUTAssert.h"

void JOR_MESSAGELOOP();
u32 JORMessageBox(const char* message, const char* title, u32 style);

struct JOREventCallbackListNode {
    JOREventCallbackListNode(u32, u32, bool);
    void JORAppend();
    void JORRemove();

    virtual int JORAct(u32, const char*);
    virtual ~JOREventCallbackListNode();

    /* 0x04 */ JGadget::TLinkListNode m_node;
    /* 0x0C */ u32 field_0xc;
    /* 0x10 */ u32 field_0x10;
};

class JORFile;
class JORDir;
class JORHostInfo_String;
class JORHostInfo_CalendarTime;

class JORServer : public JHITag<JHICmnMem> {
public:
    enum ECommand {
        ECommand_GetRootObj    = 1,
        ECommand_GenObjInfo    = 3,
        ECommand_NodeEvent     = 6,
        ECommand_PropertyEvent = 7,
        ECommand_FIO           = 9,
        ECommand_ReadResultS32 = 10,
        ECommand_ReadOrEvent   = 11,
        ECommand_DIR           = 13,
        ECommand_HostInfo      = 14,
        ECommand_ReadResultU32 = 15,
    };

    JORServer() : JHITag<JHICmnMem>('ORef'),
        m_event(false),
        m_eventDone(true),
        m_eventFunc(NULL),
        m_isEventCallbackListEnabled(false)
    {}

    static JORServer* create();
    void receive(const char*, s32);

    JORMContext* attachMCTX(u32);
    void releaseMCTX(JORMContext*);

    void appendEventCallbackListNode(JOREventCallbackListNode* p) {
        JUT_ASSERT(256, p!=0);
        m_eventCallbackList.Push_front(p);
    }

    void removeEventCallbackListNode(JOREventCallbackListNode* p) {
        JUT_ASSERT(257, p!=0);
        m_eventCallbackList.Remove(p);
    }

    static void defSetVal(void*, u32, s32);
    static void defSetBitVal(void*, u32, u16, u16);

    void fio_openFile_(JSUMemoryInputStream&);
    void fio_closeFile_(JSUMemoryInputStream&);
    void fio_readData_(JSUMemoryInputStream&);
    void fio_writeData_(JSUMemoryInputStream&);
    void fio_dispatchMessage_(JSUMemoryInputStream&);

    void dir_findFirstFile_(JSUMemoryInputStream&, JORDir*);
    void dir_findNextFile_(JSUMemoryInputStream&, JORDir*);
    void dir_browseForFolder_(JSUMemoryInputStream&, JORDir*);

    void readResultS32_(JSUMemoryInputStream&);
    void readOrEvent_(JSUMemoryInputStream&);
    void dir_dispatchMessage_(JSUMemoryInputStream&);
    void hostinfo_dispatchMessage_(JSUMemoryInputStream&);
    void hostinfo_recvString_(JSUMemoryInputStream&, JORHostInfo_String*);
    void hostinfo_localTime_(JSUMemoryInputStream&, JORHostInfo_CalendarTime*);
    void readResultU32_(JSUMemoryInputStream&);

    void sendReset();

    void setRootNode(const char*, JORReflexible*, u32, u32);
    void doneEvent();

    static JORServer* getInstance() { return instance; }
    static JORServer* instance;

    /* 0x0000C */ JORMContext m_context;
    /* 0x10020 */ JORReflexible* mp_rootObj;
    /* 0x10024 */ char m_rootName[64];
    /* 0x10064 */ u32 field_0x10064;
    /* 0x10068 */ u32 field_0x10068;
    /* 0x1006C */ bool m_event;
    /* 0x1006D */ bool m_eventDone;
    /* 0x10070 */ u32 m_eventNum;
    /* 0x10074 */ char m_eventName[0x1000];
    /* 0x11074 */ void* m_eventFunc;
    /* 0x11078 */ bool m_isEventCallbackListEnabled;
    /* 0x1107C */ JGadget::TLinkList<JOREventCallbackListNode, -4> m_eventCallbackList;
};

#endif /* JORSERVER_H */
