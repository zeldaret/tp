#include "HBMRemoteSpk.h"

#include "global.h"

#include <revolution/types.h>

#include "nw4hbm/ut/Font.h"  // IWYU pragma: keep (text)

#include <revolution/arc.h>
#include <revolution/os/OSAlarm.h>
#include <revolution/os/OSInterrupt.h>
#include <revolution/os/OSTime.h>
#include <revolution/wenc.h>
#include <revolution/wpad.h>

namespace homebutton {
    static bool MakeVolumeData(s16 const* src, s16* dst, int vol, u32 size);
}  // namespace homebutton

namespace homebutton {
    // .bss
    RemoteSpk* RemoteSpk::spInstance;
}  // namespace homebutton

namespace homebutton {

    void RemoteSpk::SetInstance(RemoteSpk* pThis) {
        spInstance = pThis;
    }

    RemoteSpk* RemoteSpk::GetInstance() {
        return spInstance;
    }

    void RemoteSpk::GetPCMFromSeID(int in_ID, s16*& out_wave, int& out_length) {
        ARCFileInfo af;
        ARCFastOpen(&handle, in_ID, &af);

        out_wave = static_cast<s16*>(ARCGetStartAddrInMem(&af));
        out_length = static_cast<int>(ARCGetLength(&af));

        ARCClose(&af);
    }

    static bool MakeVolumeData(s16 const* src, s16* dst, int vol, u32 size) {
        u32 enc_size = size <= 40 ? size : 40;
        for (int i = 0; i < enc_size; ++i)
            *dst++ = static_cast<s16>(*src++ * vol / 10);

        if (size > 40)
            return FALSE;

        u32 zero_size = 40 - size;
        for (int i = 0; i < zero_size; ++i)
            *dst++ = 0;

        return TRUE;
    }

    void RemoteSpk::UpdateSpeaker(OSAlarm*, OSContext*) {
        s16 pcmBuffer[40];
        u8 adpcmBuffer[20];

        if (!GetInstance())
            return;

        ChanInfo* pinfo = GetInstance()->info;

        /* explicitly post-increment */
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++, pinfo++) {
            if (pinfo->in_pcm && WPADIsSpeakerEnabled(i)) {
                BOOL intrStatus = OSDisableInterrupts(); /* int intr; */

                if (WPADCanSendStreamData(i)) {
                    MakeVolumeData(pinfo->in_pcm, pcmBuffer, pinfo->vol,
                                   pinfo->length / sizeof(s16));
                    WENCGetEncodeData(&pinfo->wencinfo, pinfo->first ? 0 : 1, pcmBuffer,
                                      ARRAY_SIZE(pcmBuffer), adpcmBuffer);
                    WPADSendStreamData(i, adpcmBuffer, ARRAY_SIZE(adpcmBuffer));

                    pinfo->first = FALSE;
                    pinfo->cannotSendCnt = 0;
                    pinfo->in_pcm += ARRAY_SIZE(pcmBuffer);
                    pinfo->length -= sizeof pcmBuffer;

                    if (pinfo->length <= 0) {
                        pinfo->seId = -1;
                        pinfo->in_pcm = NULL;
                    }
                } else {
                    ++pinfo->cannotSendCnt;

                    if (pinfo->cannotSendCnt > 60)
                        pinfo->in_pcm = NULL;
                }

                OSRestoreInterrupts(intrStatus);
            }
        }
    }

    void RemoteSpk::ClearPcm() {
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            info[i].in_pcm = NULL;
            info[i].seId = -1;
        }
    }

    RemoteSpk::RemoteSpk(void* spkSeBuf) {
        SetInstance(this);

        if (spkSeBuf)
            available = ARCInitHandle(spkSeBuf, &handle);
        else
            available = FALSE;

        OSCreateAlarm(&speakerAlarm);

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            OSCreateAlarm(&info[i].alarm);
            info[i].in_pcm = NULL;
            info[i].seId = -1;
            info[i].first = TRUE;
            info[i].playReady = TRUE;
        }
    }

    RemoteSpk::~RemoteSpk() {
        SetInstance(NULL);
        available = FALSE;

        // manual inline of Stop

        OSCancelAlarm(&speakerAlarm);

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
            OSCancelAlarm(&info[i].alarm);
    }

    void RemoteSpk::Start() {
        if (!available)
            return;

        OSCreateAlarm(&speakerAlarm);
        OSSetPeriodicAlarm(&speakerAlarm, OSGetTime(), OSNanosecondsToTicks(6666667),
                           &UpdateSpeaker);

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            OSCreateAlarm(&info[i].alarm);

            info[i].in_pcm = NULL;
            info[i].seId = -1;
            info[i].first = TRUE;
            info[i].playReady = TRUE;
        }
    }

    void RemoteSpk::Stop() {
        OSCancelAlarm(&speakerAlarm);

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
            OSCancelAlarm(&info[i].alarm);
    }

    void RemoteSpk::DelaySpeakerOnCallback(OSAlarm* alarm, OSContext*) {
        s32 chan = (s32)OSGetAlarmUserData(alarm);
        s32 result =
            WPADControlSpeaker(chan, WPAD_SPEAKER_ENABLE, &SpeakerOnCallback);
    }

    void RemoteSpk::SpeakerOnCallback(s32 chan, s32 result) {
        RemoteSpk* pRmtSpk = GetInstance();
        if (!pRmtSpk)
            return;

        switch (result) {
        case WPAD_ESUCCESS:
            pRmtSpk->info[chan].first = TRUE;
            result = WPADControlSpeaker(chan, WPAD_SPEAKER_PLAY, &SpeakerPlayCallback);
            break;

        case WPAD_ETRANSFER:
            pRmtSpk->info[chan].playReady = FALSE;
            break;

        case WPAD_EBUSY:
            OSSetAlarmUserData(&pRmtSpk->info[chan].alarm, (void*)chan);
            OSCancelAlarm(&pRmtSpk->info[chan].alarm);
            OSSetAlarm(&pRmtSpk->info[chan].alarm, OSMillisecondsToTicks(50),
                       &DelaySpeakerOnCallback);
            break;
        }
    }

    /* New! */
    void RemoteSpk::DelaySpeakerOffCallback(OSAlarm* alarm, OSContext*) {
        s32 chan = (s32)OSGetAlarmUserData(alarm);
        s32 result =
            WPADControlSpeaker(chan, WPAD_SPEAKER_DISABLE, &SpeakerOffCallback);
    }

    /* New! */
    void RemoteSpk::SpeakerOffCallback(s32 chan, s32 result) {
        RemoteSpk* pRmtSpk = GetInstance();
        if (!pRmtSpk)
            return;

        switch (result) {
        case WPAD_ESUCCESS:
        case WPAD_ETRANSFER:
            pRmtSpk->info[chan].playReady = FALSE;
            break;

        case WPAD_EBUSY:
            OSSetAlarmUserData(&pRmtSpk->info[chan].alarm, (void*)chan);
            OSCancelAlarm(&pRmtSpk->info[chan].alarm);
            OSSetAlarm(&pRmtSpk->info[chan].alarm, OSMillisecondsToTicks(50),
                       &DelaySpeakerOffCallback);
            break;
        }
    }

    void RemoteSpk::DelaySpeakerPlayCallback(OSAlarm* alarm, OSContext*) {
        s32 chan = (s32)OSGetAlarmUserData(alarm);

        s32 result =
            WPADControlSpeaker(chan, WPAD_SPEAKER_PLAY, &SpeakerPlayCallback);
    }

    void RemoteSpk::SpeakerPlayCallback(s32 chan, s32 result) {
        RemoteSpk* pRmtSpk = GetInstance();
        if (!pRmtSpk)
            return;

        switch (result) {
        case WPAD_ESUCCESS:
            pRmtSpk->info[chan].playReady = TRUE;
            break;

        case WPAD_ETRANSFER:
            pRmtSpk->info[chan].playReady = FALSE;
            break;

        case WPAD_ENODEV:
            pRmtSpk->info[chan].playReady = FALSE;
            break;

        case WPAD_EBUSY:
            OSSetAlarmUserData(&pRmtSpk->info[chan].alarm, (void*)chan);
            OSCancelAlarm(&pRmtSpk->info[chan].alarm);
            OSSetAlarm(&pRmtSpk->info[chan].alarm, OSMillisecondsToTicks(50),
                       &DelaySpeakerPlayCallback);
            break;
        }
    }

    void RemoteSpk::Connect(s32 chan) {
        if (!available)
            return;

        // NOTE: DWARF says this is an int and not a s32, which is a long
        int result = WPADControlSpeaker(chan, WPAD_SPEAKER_ENABLE, &SpeakerOnCallback);

        u32* p = reinterpret_cast<u32*>(info[chan].wencinfo.data);

        /* explicitly post-increment */
        for (int i = sizeof info[chan].wencinfo.data / sizeof(u32); i > 0; i--, p++) {
            *p = 0;
        }

        info[chan].first = TRUE;
        info[chan].playReady = FALSE;
    }

    /* New! */
    void RemoteSpk::Disconnect(s32 chan) {
        if (!available)
            return;

        // NOTE: DWARF says this is an int and not a s32, which is a long
        int result =
            WPADControlSpeaker(chan, WPAD_SPEAKER_DISABLE, &SpeakerOffCallback);

        info[chan].playReady = FALSE;
    }

    void RemoteSpk::Play(s32 chan, int seID, s8 vol) {
        if (!available)
            return;

        s16* pcm;
        int length;
        GetPCMFromSeID(seID, pcm, length);

        info[chan].cannotSendCnt = 0;
        info[chan].seId = seID;
        info[chan].length = length;
        info[chan].vol = vol;
        info[chan].in_pcm = pcm;
    }

    bool RemoteSpk::isPlaying(s32 chan) const {
        return info[chan].in_pcm != NULL;
    }

    bool RemoteSpk::isPlayingId(s32 chan, int seId) const {
        if (isPlaying(chan) && info[chan].seId == seId)
            return TRUE;
        else
            return FALSE;
    }

    bool RemoteSpk::isPlayReady(s32 chan) const {
        return info[chan].playReady != FALSE;
    }

}  // namespace homebutton
