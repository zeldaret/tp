#ifndef JASOSCILLATOR_H
#define JASOSCILLATOR_H

#include "dolphin/types.h"


struct JASOscillator {
	struct Point {};
	
	struct Data {
		/* 0x00 */ u32 _00;
		/* 0x04 */ f32 _04;
		/* 0x08 */ short* _08;
		/* 0x0C */ short* _0C;
		/* 0x10 */ f32 _10;
		/* 0x14 */ f32 _14;
	};

	JASOscillator();

	void initStart(const Data*);
	void incCounter(f32 param_0);
	f32 getValue() const;
	void release();
    void update();
    void updateCurrentValue(f32 param_0);

    void stop() {
        _1C = 0;
    }

	/* 0x00 */ const Data* mData;
	/* 0x04 */ f32 _04;
	/* 0x08 */ f32 _08;
	/* 0x0C */ f32 _0C;
	/* 0x10 */ f32 _10;
	/* 0x14 */ u16 _14;
	/* 0x16 */ u16 _16;
	/* 0x18 */ u8 _18;
	/* 0x1A */ u16 _1A;
	/* 0x1C */ int _1C;

    static const f32 sCurveTableLinear[17];
    static const f32 sCurveTableSampleCell[17];
	static const f32 sCurveTableSqRoot[17];
	static const f32 sCurveTableSquare[17];
};

#endif /* JASOSCILLATOR_H */
