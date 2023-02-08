lbl_80C75DD0:
/* 80C75DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75DD4  7C 08 02 A6 */	mflr r0
/* 80C75DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C75DE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C75DE4  41 82 00 1C */	beq lbl_80C75E00
/* 80C75DE8  3C A0 80 C7 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C76780@ha */
/* 80C75DEC  38 05 67 80 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C76780@l */
/* 80C75DF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C75DF4  7C 80 07 35 */	extsh. r0, r4
/* 80C75DF8  40 81 00 08 */	ble lbl_80C75E00
/* 80C75DFC  4B 65 8F 41 */	bl __dl__FPv
lbl_80C75E00:
/* 80C75E00  7F E3 FB 78 */	mr r3, r31
/* 80C75E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C75E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C75E0C  7C 08 03 A6 */	mtlr r0
/* 80C75E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C75E14  4E 80 00 20 */	blr 
