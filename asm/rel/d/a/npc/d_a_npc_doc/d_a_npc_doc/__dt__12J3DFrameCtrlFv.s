lbl_809A9CF8:
/* 809A9CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9CFC  7C 08 02 A6 */	mflr r0
/* 809A9D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A9D08  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A9D0C  41 82 00 1C */	beq lbl_809A9D28
/* 809A9D10  3C A0 80 9B */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x809AA958@ha */
/* 809A9D14  38 05 A9 58 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x809AA958@l */
/* 809A9D18  90 1F 00 00 */	stw r0, 0(r31)
/* 809A9D1C  7C 80 07 35 */	extsh. r0, r4
/* 809A9D20  40 81 00 08 */	ble lbl_809A9D28
/* 809A9D24  4B 92 50 19 */	bl __dl__FPv
lbl_809A9D28:
/* 809A9D28  7F E3 FB 78 */	mr r3, r31
/* 809A9D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9D34  7C 08 03 A6 */	mtlr r0
/* 809A9D38  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9D3C  4E 80 00 20 */	blr 
