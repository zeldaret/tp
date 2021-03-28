lbl_809B16E8:
/* 809B16E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B16EC  7C 08 02 A6 */	mflr r0
/* 809B16F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B16F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B16F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B16FC  41 82 00 1C */	beq lbl_809B1718
/* 809B1700  3C A0 80 9B */	lis r5, __vt__8cM3dGAab@ha
/* 809B1704  38 05 19 98 */	addi r0, r5, __vt__8cM3dGAab@l
/* 809B1708  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809B170C  7C 80 07 35 */	extsh. r0, r4
/* 809B1710  40 81 00 08 */	ble lbl_809B1718
/* 809B1714  4B 91 D6 28 */	b __dl__FPv
lbl_809B1718:
/* 809B1718  7F E3 FB 78 */	mr r3, r31
/* 809B171C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B1720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1724  7C 08 03 A6 */	mtlr r0
/* 809B1728  38 21 00 10 */	addi r1, r1, 0x10
/* 809B172C  4E 80 00 20 */	blr 
