lbl_809AAE10:
/* 809AAE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AAE14  7C 08 02 A6 */	mflr r0
/* 809AAE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AAE1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AAE20  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AAE24  41 82 00 1C */	beq lbl_809AAE40
/* 809AAE28  3C A0 80 9B */	lis r5, __vt__8cM3dGCyl@ha
/* 809AAE2C  38 05 DD 1C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 809AAE30  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809AAE34  7C 80 07 35 */	extsh. r0, r4
/* 809AAE38  40 81 00 08 */	ble lbl_809AAE40
/* 809AAE3C  4B 92 3F 00 */	b __dl__FPv
lbl_809AAE40:
/* 809AAE40  7F E3 FB 78 */	mr r3, r31
/* 809AAE44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AAE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AAE4C  7C 08 03 A6 */	mtlr r0
/* 809AAE50  38 21 00 10 */	addi r1, r1, 0x10
/* 809AAE54  4E 80 00 20 */	blr 
