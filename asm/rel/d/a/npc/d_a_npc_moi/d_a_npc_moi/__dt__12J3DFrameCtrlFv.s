lbl_80A7A74C:
/* 80A7A74C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7A750  7C 08 02 A6 */	mflr r0
/* 80A7A754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7A758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7A75C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7A760  41 82 00 1C */	beq lbl_80A7A77C
/* 80A7A764  3C A0 80 A8 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A7A768  38 05 BE 28 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A7A76C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A7A770  7C 80 07 35 */	extsh. r0, r4
/* 80A7A774  40 81 00 08 */	ble lbl_80A7A77C
/* 80A7A778  4B 85 45 C4 */	b __dl__FPv
lbl_80A7A77C:
/* 80A7A77C  7F E3 FB 78 */	mr r3, r31
/* 80A7A780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7A784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7A788  7C 08 03 A6 */	mtlr r0
/* 80A7A78C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7A790  4E 80 00 20 */	blr 
