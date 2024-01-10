#ifndef JASCMDSTACK_H
#define JASCMDSTACK_H

#include "dolphin/types.h"
#include "JSystem/JSupport/JSUList.h"

class JASTrack;

struct JASPortArgs {
	JASTrack* _00;
	u32 _04;
	u32 _08;
	f32 _0C;
	f32 _10;
	f32 _14;
	f32 _18;
	f32 _1C;
	f32 _20;
	u32 _24;
	f32 _28;
};

struct JASPortCmd : JSULink<JASPortCmd> {
    typedef void (*Command)(JASPortArgs*);

	struct TPortHead : JSUList<JASPortCmd> {
		inline TPortHead()
		    : JSUList<JASPortCmd>()
		{
		}

		~TPortHead() {}

		void execCommandOnce();
		void execCommandStay();
	};

    /* 80291060 */ static void execAllCommand();

    Command _10;
	JASPortArgs* _14;

    static TPortHead sCommandListOnce;
    static TPortHead sCommandListStay;
};

#endif /* JASCMDSTACK_H */
