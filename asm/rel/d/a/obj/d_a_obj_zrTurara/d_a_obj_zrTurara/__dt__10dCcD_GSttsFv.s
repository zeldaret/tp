lbl_80D40BAC:
/* 80D40BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D40BB0  7C 08 02 A6 */	mflr r0
/* 80D40BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D40BBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D40BC0  41 82 00 30 */	beq lbl_80D40BF0
/* 80D40BC4  3C 60 80 D4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D41710@ha */
/* 80D40BC8  38 03 17 10 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D41710@l */
/* 80D40BCC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D40BD0  41 82 00 10 */	beq lbl_80D40BE0
/* 80D40BD4  3C 60 80 D4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D41704@ha */
/* 80D40BD8  38 03 17 04 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D41704@l */
/* 80D40BDC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D40BE0:
/* 80D40BE0  7C 80 07 35 */	extsh. r0, r4
/* 80D40BE4  40 81 00 0C */	ble lbl_80D40BF0
/* 80D40BE8  7F E3 FB 78 */	mr r3, r31
/* 80D40BEC  4B 58 E1 51 */	bl __dl__FPv
lbl_80D40BF0:
/* 80D40BF0  7F E3 FB 78 */	mr r3, r31
/* 80D40BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D40BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D40BFC  7C 08 03 A6 */	mtlr r0
/* 80D40C00  38 21 00 10 */	addi r1, r1, 0x10
/* 80D40C04  4E 80 00 20 */	blr 
