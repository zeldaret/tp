lbl_804E1604:
/* 804E1604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1608  7C 08 02 A6 */	mflr r0
/* 804E160C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1614  7C 7F 1B 79 */	or. r31, r3, r3
/* 804E1618  41 82 00 1C */	beq lbl_804E1634
/* 804E161C  3C A0 80 4E */	lis r5, __vt__8cM3dGAab@ha
/* 804E1620  38 05 1B 6C */	addi r0, r5, __vt__8cM3dGAab@l
/* 804E1624  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804E1628  7C 80 07 35 */	extsh. r0, r4
/* 804E162C  40 81 00 08 */	ble lbl_804E1634
/* 804E1630  4B DE D7 0C */	b __dl__FPv
lbl_804E1634:
/* 804E1634  7F E3 FB 78 */	mr r3, r31
/* 804E1638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E163C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1640  7C 08 03 A6 */	mtlr r0
/* 804E1644  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1648  4E 80 00 20 */	blr 
