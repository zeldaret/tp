lbl_80C2B2E0:
/* 80C2B2E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2B2E4  7C 08 02 A6 */	mflr r0
/* 80C2B2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2B2EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2B2F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2B2F4  41 82 00 1C */	beq lbl_80C2B310
/* 80C2B2F8  3C A0 80 C3 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C2B2FC  38 05 E2 CC */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C2B300  90 1F 00 00 */	stw r0, 0(r31)
/* 80C2B304  7C 80 07 35 */	extsh. r0, r4
/* 80C2B308  40 81 00 08 */	ble lbl_80C2B310
/* 80C2B30C  4B 6A 3A 30 */	b __dl__FPv
lbl_80C2B310:
/* 80C2B310  7F E3 FB 78 */	mr r3, r31
/* 80C2B314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2B318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2B31C  7C 08 03 A6 */	mtlr r0
/* 80C2B320  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2B324  4E 80 00 20 */	blr 
