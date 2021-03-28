lbl_80B00BCC:
/* 80B00BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00BD0  7C 08 02 A6 */	mflr r0
/* 80B00BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B00BDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B00BE0  41 82 00 1C */	beq lbl_80B00BFC
/* 80B00BE4  3C A0 80 B0 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B00BE8  38 05 12 A8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B00BEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80B00BF0  7C 80 07 35 */	extsh. r0, r4
/* 80B00BF4  40 81 00 08 */	ble lbl_80B00BFC
/* 80B00BF8  4B 7C E1 44 */	b __dl__FPv
lbl_80B00BFC:
/* 80B00BFC  7F E3 FB 78 */	mr r3, r31
/* 80B00C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00C08  7C 08 03 A6 */	mtlr r0
/* 80B00C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00C10  4E 80 00 20 */	blr 
