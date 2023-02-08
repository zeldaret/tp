lbl_80D62BC8:
/* 80D62BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D62BCC  7C 08 02 A6 */	mflr r0
/* 80D62BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D62BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D62BD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D62BDC  41 82 00 1C */	beq lbl_80D62BF8
/* 80D62BE0  3C A0 80 D6 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D62CF4@ha */
/* 80D62BE4  38 05 2C F4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D62CF4@l */
/* 80D62BE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D62BEC  7C 80 07 35 */	extsh. r0, r4
/* 80D62BF0  40 81 00 08 */	ble lbl_80D62BF8
/* 80D62BF4  4B 56 C1 49 */	bl __dl__FPv
lbl_80D62BF8:
/* 80D62BF8  7F E3 FB 78 */	mr r3, r31
/* 80D62BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D62C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D62C04  7C 08 03 A6 */	mtlr r0
/* 80D62C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80D62C0C  4E 80 00 20 */	blr 
