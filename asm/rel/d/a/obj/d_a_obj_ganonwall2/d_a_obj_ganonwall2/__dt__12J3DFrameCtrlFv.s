lbl_80BF5A6C:
/* 80BF5A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF5A70  7C 08 02 A6 */	mflr r0
/* 80BF5A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF5A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF5A7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF5A80  41 82 00 1C */	beq lbl_80BF5A9C
/* 80BF5A84  3C A0 80 BF */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80BF6264@ha */
/* 80BF5A88  38 05 62 64 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80BF6264@l */
/* 80BF5A8C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF5A90  7C 80 07 35 */	extsh. r0, r4
/* 80BF5A94  40 81 00 08 */	ble lbl_80BF5A9C
/* 80BF5A98  4B 6D 92 A5 */	bl __dl__FPv
lbl_80BF5A9C:
/* 80BF5A9C  7F E3 FB 78 */	mr r3, r31
/* 80BF5AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF5AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF5AA8  7C 08 03 A6 */	mtlr r0
/* 80BF5AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF5AB0  4E 80 00 20 */	blr 
