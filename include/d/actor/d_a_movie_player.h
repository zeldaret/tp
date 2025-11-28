#ifndef D_A_MOVIE_PLAYER_H
#define D_A_MOVIE_PLAYER_H

#include <dolphin/thp.h>
#include "f_op/f_op_actor.h"
#include "d/d_drawlist.h"

struct daMP_THPReadBuffer {
    u8* ptr;
	s32 frameNumber;
	BOOL isValid;
};

struct daMP_THPPlayer {
    /* 0x000 */ DVDFileInfo fileInfo;
	/* 0x03C */ THPHeader header;
	/* 0x06C */ THPFrameCompInfo compInfo;
	/* 0x080 */ THPVideoInfo videoInfo;
	/* 0x08C */ THPAudioInfo audioInfo;
	/* 0x09C */ void* thpWork;
	/* 0x0A0 */ BOOL open;
	/* 0x0A4 */ u8 state;
	/* 0x0A5 */ u8 internalState;
	/* 0x0A6 */ u8 playFlag;
	/* 0x0A7 */ u8 audioExist;
	/* 0x0A8 */ s32 dvdError;
	/* 0x0AC */ s32 videoError;
	/* 0x0B0 */ BOOL onMemory;
	/* 0x0B4 */ u8* movieData;
	/* 0x0B8 */ s32 initOffset;
	/* 0x0BC */ s32 initReadSize;
	/* 0x0C0 */ s32 initReadFrame;
	/* 0x0C4 */ u32 curField;
	/* 0x0C8 */ s64 retaceCount;
	/* 0x0D0 */ s32 prevCount;
	/* 0x0D4 */ s32 curCount;
	/* 0x0D8 */ s32 videoDecodeCount;
	/* 0x0DC */ f32 curVolume;
	/* 0x0E0 */ f32 targetVolume;
	/* 0x0E4 */ f32 deltaVolume;
	/* 0x0E8 */ s32 rampCount;
	/* 0x0EC */ s32 curAudioTrack;
	/* 0x0F0 */ s32 curVideoNumber;
	/* 0x0F4 */ s32 curAudioNumber;
	/* 0x0F8 */ THPTextureSet* dispTextureSet;
	/* 0x0FC */ THPAudioBuffer* playAudioBuffer;
	/* 0x100 */ daMP_THPReadBuffer readBuffer[10];
	/* 0x000 */ THPTextureSet textureSet[THP_TEXTURE_SET_COUNT];
	/* 0x000 */ THPAudioBuffer audioBuffer[THP_AUDIO_BUFFER_COUNT];
};

/**
 * @ingroup actors-unsorted
 * @class daMP_c
 * @brief Movie Player
 *
 * @details
 *
 */
class daMP_c : public fopAc_ac_c {
public:
    /* 80031AD0 */ static int daMP_c_THPPlayerPlay();
    /* 80031B24 */ static void daMP_c_THPPlayerPause();
    /* 80031A78 */ static u32 daMP_c_Get_MovieRestFrame();
    /* 80031AA4 */ static void daMP_c_Set_PercentMovieVolume(f32);
    /* 80878BB8 */ int daMP_c_Get_arg_demoNo();
    /* 80878C04 */ int daMP_c_Get_arg_movieNo();
    /* 80878C28 */ int daMP_c_Init();
    /* 80878D64 */ int daMP_c_Finish();
    /* 80878D94 */ int daMP_c_Main();
    /* 80878DD8 */ int daMP_c_Draw();
    /* 80878ED4 */ daMP_c() {}

    /* 80878E60 */ static int daMP_c_Callback_Init(fopAc_ac_c*);
    /* 80878F18 */ static int daMP_c_Callback_Finish(daMP_c*);
    /* 80878F38 */ static int daMP_c_Callback_Main(daMP_c*);
    /* 80878F70 */ static int daMP_c_Callback_Draw(daMP_c*);

    static daMP_c* m_myObj;

private:
    /* 0x568 */ u32 (*mpGetMovieRestFrame)(void);
    /* 0x56C */ void (*mpSetPercentMovieVol)(f32);
    /* 0x570 */ u32 (*mpTHPGetTotalFrame)(void);
    /* 0x574 */ int (*mpTHPPlay)(void);
    /* 0x578 */ void (*mpTHPStop)(void);
    /* 0x57C */ int (*mpTHPPause)(void);
};

STATIC_ASSERT(sizeof(daMP_c) == 0x580);

class daMP_Dlst_base_c : public dDlst_base_c {
public:
    /* 80878FD8 */ daMP_Dlst_base_c() {}

    /* 80878DB8 */ virtual void draw();
};

inline s32 daMP_NEXT_READ_SIZE(daMP_THPReadBuffer* readBuf) {
    return *(s32*)readBuf->ptr;
}

void daMP_PrepareReady(int);

#endif /* D_A_MOVIE_PLAYER_H */
