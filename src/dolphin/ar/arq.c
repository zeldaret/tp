#include "dolphin/arq.h"
#include "dolphin/ar.h"

/* 803D1C30-803D1C78 02ED50 0045+03 1/0 0/0 0/0 .data            @1 */
char* __ARQVersion = "<< Dolphin SDK - ARQ\trelease build: Apr  5 2004 04:15:04 (0x2301) >>";

void __ARQServiceQueueLo();
void __ARQCallbackHack();
void __ARQInterruptServiceRoutine();

/* 804518D8-804518DC 000DD8 0004+00 3/3 0/0 0/0 .sbss            __ARQRequestQueueHi */
static ARQRequest* __ARQRequestQueueHi;

/* 804518DC-804518E0 000DDC 0004+00 1/1 0/0 0/0 .sbss            __ARQRequestTailHi */
static ARQRequest* __ARQRequestTailHi;

/* 804518E0-804518E4 000DE0 0004+00 3/3 0/0 0/0 .sbss            __ARQRequestQueueLo */
static ARQRequest* __ARQRequestQueueLo;

/* 804518E4-804518E8 000DE4 0004+00 1/1 0/0 0/0 .sbss            __ARQRequestTailLo */
static ARQRequest* __ARQRequestTailLo;

/* 804518E8-804518EC 000DE8 0004+00 3/3 0/0 0/0 .sbss            __ARQRequestPendingHi */
static ARQRequest* __ARQRequestPendingHi;

/* 804518EC-804518F0 000DEC 0004+00 4/4 0/0 0/0 .sbss            __ARQRequestPendingLo */
static ARQRequest* __ARQRequestPendingLo;

/* 804518F0-804518F4 000DF0 0004+00 3/3 0/0 0/0 .sbss            __ARQCallbackHi */
static ARQCallback __ARQCallbackHi;

/* 804518F4-804518F8 000DF4 0004+00 3/3 0/0 0/0 .sbss            __ARQCallbackLo */
static ARQCallback __ARQCallbackLo;

/* 804518F8-804518FC 000DF8 0004+00 2/2 0/0 0/0 .sbss            __ARQChunkSize */
static u32 __ARQChunkSize;

/* 804518FC-80451900 000DFC 0004+00 1/1 0/0 0/0 .sbss            __ARQ_init_flag */
static BOOL __ARQ_init_flag;

/* 80352094-80352194 34C9D4 0100+00 2/2 0/0 0/0 .text            __ARQServiceQueueLo */
void __ARQServiceQueueLo(void) {
    if ((__ARQRequestPendingLo == NULL) && (__ARQRequestQueueLo)) {
        __ARQRequestPendingLo = __ARQRequestQueueLo;

        __ARQRequestQueueLo = __ARQRequestQueueLo->next;
    }

    if (__ARQRequestPendingLo) {
        if (__ARQRequestPendingLo->length <= __ARQChunkSize) {
            if (__ARQRequestPendingLo->type == ARAM_DIR_MRAM_TO_ARAM)
                ARStartDMA(__ARQRequestPendingLo->type, __ARQRequestPendingLo->source,
                           __ARQRequestPendingLo->destination, __ARQRequestPendingLo->length);
            else
                ARStartDMA(__ARQRequestPendingLo->type, __ARQRequestPendingLo->destination,
                           __ARQRequestPendingLo->source, __ARQRequestPendingLo->length);

            __ARQCallbackLo = __ARQRequestPendingLo->callback;
        } else {
            if (__ARQRequestPendingLo->type == ARAM_DIR_MRAM_TO_ARAM)
                ARStartDMA(__ARQRequestPendingLo->type, __ARQRequestPendingLo->source,
                           __ARQRequestPendingLo->destination, __ARQChunkSize);
            else
                ARStartDMA(__ARQRequestPendingLo->type, __ARQRequestPendingLo->destination,
                           __ARQRequestPendingLo->source, __ARQChunkSize);
        }

        __ARQRequestPendingLo->length -= __ARQChunkSize;
        __ARQRequestPendingLo->source += __ARQChunkSize;
        __ARQRequestPendingLo->destination += __ARQChunkSize;
    }
}

/* 80352194-80352198 34CAD4 0004+00 1/1 0/0 0/0 .text            __ARQCallbackHack */
void __ARQCallbackHack() {}

/* 80352198-80352264 34CAD8 00CC+00 1/1 0/0 0/0 .text            __ARQInterruptServiceRoutine */
void __ARQInterruptServiceRoutine(void) {
    if (__ARQCallbackHi) {
        (*__ARQCallbackHi)((u32)__ARQRequestPendingHi);
        __ARQRequestPendingHi = NULL;
        __ARQCallbackHi = NULL;
    }

    else if (__ARQCallbackLo)
    {
        (*__ARQCallbackLo)((u32)__ARQRequestPendingLo);
        __ARQRequestPendingLo = NULL;
        __ARQCallbackLo = NULL;
    }

    if (__ARQRequestQueueHi) {
        if (__ARQRequestQueueHi->type == 0) {
            ARStartDMA(__ARQRequestQueueHi->type, __ARQRequestQueueHi->source,
                       __ARQRequestQueueHi->destination, __ARQRequestQueueHi->length);
        } else {
            ARStartDMA(__ARQRequestQueueHi->type, __ARQRequestQueueHi->destination,
                       __ARQRequestQueueHi->source, __ARQRequestQueueHi->length);
        }
        __ARQCallbackHi = __ARQRequestQueueHi->callback;
        __ARQRequestPendingHi = __ARQRequestQueueHi;
        __ARQRequestQueueHi = __ARQRequestQueueHi->next;
    }

    if (__ARQRequestPendingHi == NULL) {
        __ARQServiceQueueLo();
    }
}

/* 80352264-803522D4 34CBA4 0070+00 0/0 1/1 0/0 .text            ARQInit */
void ARQInit(void) {
    if (__ARQ_init_flag == TRUE) {
        return;
    }

    OSRegisterVersion(__ARQVersion);
    __ARQRequestQueueHi = __ARQRequestQueueLo = NULL;
    __ARQChunkSize = ARQ_CHUNK_SIZE_DEFAULT;
    ARRegisterDMACallback(&__ARQInterruptServiceRoutine);
    __ARQRequestPendingHi = NULL;
    __ARQRequestPendingLo = NULL;
    __ARQCallbackHi = NULL;
    __ARQCallbackLo = NULL;
    __ARQ_init_flag = TRUE;
}

/* 803522D4-80352430 34CC14 015C+00 0/0 1/1 0/0 .text            ARQPostRequest */
void ARQPostRequest(ARQRequest* request, u32 owner, u32 type, u32 priority, u32 source, u32 dest,
                    u32 length, ARQCallback callback) {
    BOOL enabled;

    request->next = NULL;
    request->owner = owner;
    request->type = type;
    request->source = source;
    request->destination = dest;
    request->length = length;

    if (callback) {
        request->callback = callback;
    } else {
        request->callback = (ARQCallback)&__ARQCallbackHack;
    }

    enabled = OSDisableInterrupts();

    switch (priority) {
    case ARQ_PRIORITY_LOW:

        if (__ARQRequestQueueLo) {
            __ARQRequestTailLo->next = request;
        } else {
            __ARQRequestQueueLo = request;
        }
        __ARQRequestTailLo = request;

        break;

    case ARQ_PRIORITY_HIGH:

        if (__ARQRequestQueueHi) {
            __ARQRequestTailHi->next = request;
        } else {
            __ARQRequestQueueHi = request;
        }

        __ARQRequestTailHi = request;

        break;
    }

    if ((__ARQRequestPendingHi == NULL) && (__ARQRequestPendingLo == NULL)) {
        if (__ARQRequestQueueHi) {
            if (__ARQRequestQueueHi->type == ARAM_DIR_MRAM_TO_ARAM) {
                ARStartDMA(__ARQRequestQueueHi->type, __ARQRequestQueueHi->source,
                           __ARQRequestQueueHi->destination, __ARQRequestQueueHi->length);
            } else {
                ARStartDMA(__ARQRequestQueueHi->type, __ARQRequestQueueHi->destination,
                           __ARQRequestQueueHi->source, __ARQRequestQueueHi->length);
            }

            __ARQCallbackHi = __ARQRequestQueueHi->callback;

            __ARQRequestPendingHi = __ARQRequestQueueHi;

            __ARQRequestQueueHi = __ARQRequestQueueHi->next;
        }

        if (__ARQRequestPendingHi == NULL) {
            __ARQServiceQueueLo();
        }
    }

    OSRestoreInterrupts(enabled);
}