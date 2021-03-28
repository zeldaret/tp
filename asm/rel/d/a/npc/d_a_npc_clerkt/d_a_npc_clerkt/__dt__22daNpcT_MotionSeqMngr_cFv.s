lbl_8099C968:
/* 8099C968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099C96C  7C 08 02 A6 */	mflr r0
/* 8099C970  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099C974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099C978  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099C97C  41 82 00 1C */	beq lbl_8099C998
/* 8099C980  3C A0 80 9A */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8099C984  38 05 D5 30 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8099C988  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8099C98C  7C 80 07 35 */	extsh. r0, r4
/* 8099C990  40 81 00 08 */	ble lbl_8099C998
/* 8099C994  4B 93 23 A8 */	b __dl__FPv
lbl_8099C998:
/* 8099C998  7F E3 FB 78 */	mr r3, r31
/* 8099C99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099C9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099C9A4  7C 08 03 A6 */	mtlr r0
/* 8099C9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8099C9AC  4E 80 00 20 */	blr 
