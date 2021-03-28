lbl_80B4C5EC:
/* 80B4C5EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C5F0  7C 08 02 A6 */	mflr r0
/* 80B4C5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C5F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C5FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4C600  41 82 00 1C */	beq lbl_80B4C61C
/* 80B4C604  3C A0 80 B5 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B4C608  38 05 D0 D4 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B4C60C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B4C610  7C 80 07 35 */	extsh. r0, r4
/* 80B4C614  40 81 00 08 */	ble lbl_80B4C61C
/* 80B4C618  4B 78 27 24 */	b __dl__FPv
lbl_80B4C61C:
/* 80B4C61C  7F E3 FB 78 */	mr r3, r31
/* 80B4C620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C628  7C 08 03 A6 */	mtlr r0
/* 80B4C62C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C630  4E 80 00 20 */	blr 
