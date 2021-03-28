lbl_804845D8:
/* 804845D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804845DC  7C 08 02 A6 */	mflr r0
/* 804845E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804845E4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 804845E8  28 00 00 02 */	cmplwi r0, 2
/* 804845EC  40 82 00 0C */	bne lbl_804845F8
/* 804845F0  48 00 00 1D */	bl demo_runPause_init__Q211daObjSwpush5Act_cFv
/* 804845F4  48 00 00 08 */	b lbl_804845FC
lbl_804845F8:
/* 804845F8  4B FF FF 79 */	bl demo_non_init__Q211daObjSwpush5Act_cFv
lbl_804845FC:
/* 804845FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484600  7C 08 03 A6 */	mtlr r0
/* 80484604  38 21 00 10 */	addi r1, r1, 0x10
/* 80484608  4E 80 00 20 */	blr 
