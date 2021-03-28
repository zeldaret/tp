lbl_80AA0EF8:
/* 80AA0EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0EFC  7C 08 02 A6 */	mflr r0
/* 80AA0F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0F08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA0F0C  41 82 00 1C */	beq lbl_80AA0F28
/* 80AA0F10  3C A0 80 AA */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80AA0F14  38 05 2A 20 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80AA0F18  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA0F1C  7C 80 07 35 */	extsh. r0, r4
/* 80AA0F20  40 81 00 08 */	ble lbl_80AA0F28
/* 80AA0F24  4B 82 DE 18 */	b __dl__FPv
lbl_80AA0F28:
/* 80AA0F28  7F E3 FB 78 */	mr r3, r31
/* 80AA0F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0F34  7C 08 03 A6 */	mtlr r0
/* 80AA0F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0F3C  4E 80 00 20 */	blr 
