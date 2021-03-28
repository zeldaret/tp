lbl_80AAC968:
/* 80AAC968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC96C  7C 08 02 A6 */	mflr r0
/* 80AAC970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC978  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAC97C  41 82 00 1C */	beq lbl_80AAC998
/* 80AAC980  3C A0 80 AB */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AAC984  38 05 DA CC */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AAC988  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AAC98C  7C 80 07 35 */	extsh. r0, r4
/* 80AAC990  40 81 00 08 */	ble lbl_80AAC998
/* 80AAC994  4B 82 23 A8 */	b __dl__FPv
lbl_80AAC998:
/* 80AAC998  7F E3 FB 78 */	mr r3, r31
/* 80AAC99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC9A4  7C 08 03 A6 */	mtlr r0
/* 80AAC9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC9AC  4E 80 00 20 */	blr 
