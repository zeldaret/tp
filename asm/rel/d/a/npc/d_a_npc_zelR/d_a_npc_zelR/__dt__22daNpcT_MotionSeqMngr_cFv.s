lbl_80B7133C:
/* 80B7133C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B71340  7C 08 02 A6 */	mflr r0
/* 80B71344  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7134C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B71350  41 82 00 1C */	beq lbl_80B7136C
/* 80B71354  3C A0 80 B7 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B71358  38 05 1D 8C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B7135C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B71360  7C 80 07 35 */	extsh. r0, r4
/* 80B71364  40 81 00 08 */	ble lbl_80B7136C
/* 80B71368  4B 75 D9 D4 */	b __dl__FPv
lbl_80B7136C:
/* 80B7136C  7F E3 FB 78 */	mr r3, r31
/* 80B71370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B71374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B71378  7C 08 03 A6 */	mtlr r0
/* 80B7137C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B71380  4E 80 00 20 */	blr 
