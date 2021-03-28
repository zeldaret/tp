lbl_809A9B74:
/* 809A9B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9B78  7C 08 02 A6 */	mflr r0
/* 809A9B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A9B84  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A9B88  41 82 00 1C */	beq lbl_809A9BA4
/* 809A9B8C  3C A0 80 9B */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809A9B90  38 05 A9 AC */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809A9B94  90 1F 00 20 */	stw r0, 0x20(r31)
/* 809A9B98  7C 80 07 35 */	extsh. r0, r4
/* 809A9B9C  40 81 00 08 */	ble lbl_809A9BA4
/* 809A9BA0  4B 92 51 9C */	b __dl__FPv
lbl_809A9BA4:
/* 809A9BA4  7F E3 FB 78 */	mr r3, r31
/* 809A9BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9BB0  7C 08 03 A6 */	mtlr r0
/* 809A9BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9BB8  4E 80 00 20 */	blr 
