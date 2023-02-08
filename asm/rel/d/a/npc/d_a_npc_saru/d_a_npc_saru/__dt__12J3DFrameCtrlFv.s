lbl_80AC3E6C:
/* 80AC3E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3E70  7C 08 02 A6 */	mflr r0
/* 80AC3E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3E7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC3E80  41 82 00 1C */	beq lbl_80AC3E9C
/* 80AC3E84  3C A0 80 AC */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC3E88  38 05 4E 74 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC3E8C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC3E90  7C 80 07 35 */	extsh. r0, r4
/* 80AC3E94  40 81 00 08 */	ble lbl_80AC3E9C
/* 80AC3E98  4B 80 AE A5 */	bl __dl__FPv
lbl_80AC3E9C:
/* 80AC3E9C  7F E3 FB 78 */	mr r3, r31
/* 80AC3EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3EA8  7C 08 03 A6 */	mtlr r0
/* 80AC3EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3EB0  4E 80 00 20 */	blr 
