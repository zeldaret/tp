lbl_80ABF8D8:
/* 80ABF8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF8DC  7C 08 02 A6 */	mflr r0
/* 80ABF8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF8E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF8E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABF8EC  41 82 00 1C */	beq lbl_80ABF908
/* 80ABF8F0  3C A0 80 AC */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AC027C@ha */
/* 80ABF8F4  38 05 02 7C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AC027C@l */
/* 80ABF8F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80ABF8FC  7C 80 07 35 */	extsh. r0, r4
/* 80ABF900  40 81 00 08 */	ble lbl_80ABF908
/* 80ABF904  4B 80 F4 39 */	bl __dl__FPv
lbl_80ABF908:
/* 80ABF908  7F E3 FB 78 */	mr r3, r31
/* 80ABF90C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF914  7C 08 03 A6 */	mtlr r0
/* 80ABF918  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF91C  4E 80 00 20 */	blr 
