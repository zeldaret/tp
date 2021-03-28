lbl_80AA0D74:
/* 80AA0D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0D78  7C 08 02 A6 */	mflr r0
/* 80AA0D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0D84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA0D88  41 82 00 1C */	beq lbl_80AA0DA4
/* 80AA0D8C  3C A0 80 AA */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AA0D90  38 05 2A 74 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AA0D94  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AA0D98  7C 80 07 35 */	extsh. r0, r4
/* 80AA0D9C  40 81 00 08 */	ble lbl_80AA0DA4
/* 80AA0DA0  4B 82 DF 9C */	b __dl__FPv
lbl_80AA0DA4:
/* 80AA0DA4  7F E3 FB 78 */	mr r3, r31
/* 80AA0DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0DB0  7C 08 03 A6 */	mtlr r0
/* 80AA0DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0DB8  4E 80 00 20 */	blr 
