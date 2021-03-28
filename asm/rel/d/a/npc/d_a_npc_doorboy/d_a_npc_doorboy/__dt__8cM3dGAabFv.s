lbl_809AAE58:
/* 809AAE58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AAE5C  7C 08 02 A6 */	mflr r0
/* 809AAE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AAE64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AAE68  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AAE6C  41 82 00 1C */	beq lbl_809AAE88
/* 809AAE70  3C A0 80 9B */	lis r5, __vt__8cM3dGAab@ha
/* 809AAE74  38 05 DD 28 */	addi r0, r5, __vt__8cM3dGAab@l
/* 809AAE78  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809AAE7C  7C 80 07 35 */	extsh. r0, r4
/* 809AAE80  40 81 00 08 */	ble lbl_809AAE88
/* 809AAE84  4B 92 3E B8 */	b __dl__FPv
lbl_809AAE88:
/* 809AAE88  7F E3 FB 78 */	mr r3, r31
/* 809AAE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AAE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AAE94  7C 08 03 A6 */	mtlr r0
/* 809AAE98  38 21 00 10 */	addi r1, r1, 0x10
/* 809AAE9C  4E 80 00 20 */	blr 
