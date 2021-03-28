lbl_80CFF31C:
/* 80CFF31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFF320  7C 08 02 A6 */	mflr r0
/* 80CFF324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFF328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFF32C  7C 7F 1B 78 */	mr r31, r3
/* 80CFF330  A8 63 05 CC */	lha r3, 0x5cc(r3)
/* 80CFF334  38 03 FF FF */	addi r0, r3, -1
/* 80CFF338  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80CFF33C  A8 1F 05 CC */	lha r0, 0x5cc(r31)
/* 80CFF340  2C 00 00 00 */	cmpwi r0, 0
/* 80CFF344  41 81 00 1C */	bgt lbl_80CFF360
/* 80CFF348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF34C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFF350  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CFF354  4B 34 31 14 */	b reset__14dEvt_control_cFv
/* 80CFF358  7F E3 FB 78 */	mr r3, r31
/* 80CFF35C  4B FF FE F1 */	bl demo_non_init__Q212daObjSwpush25Act_cFv
lbl_80CFF360:
/* 80CFF360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFF364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFF368  7C 08 03 A6 */	mtlr r0
/* 80CFF36C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFF370  4E 80 00 20 */	blr 
