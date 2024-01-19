#ifndef OSMESSAGE_H
#define OSMESSAGE_H

#include "dolphin/os/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void* OSMessage;

typedef struct OSMessageQueue {
    /* 0x00 */ OSThreadQueue sending_queue;
    /* 0x08 */ OSThreadQueue receiving_queue;
    /* 0x10 */ OSMessage* message_array;
    /* 0x14 */ s32 num_messages;
    /* 0x18 */ s32 first_index;
    /* 0x1C */ s32 num_used;
} OSMessageQueue;

// Flags to turn blocking on/off when sending/receiving message
#define OS_MESSAGE_NOBLOCK 0
#define OS_MESSAGE_BLOCK 1

typedef enum {
	OS_MSG_PERSISTENT = (1 << 0),
} OSMessageFlags;

void OSInitMessageQueue(OSMessageQueue* queue, OSMessage* msgArray, s32 msgCount);
BOOL OSSendMessage(OSMessageQueue* queue, OSMessage msg, s32 flags);
BOOL OSReceiveMessage(OSMessageQueue* queue, OSMessage* msg, s32 flags);
BOOL OSJamMessage(OSMessageQueue* queue, OSMessage msg, s32 flags);

#ifdef __cplusplus
};
#endif

#endif /* OSMESSAGE_H */
