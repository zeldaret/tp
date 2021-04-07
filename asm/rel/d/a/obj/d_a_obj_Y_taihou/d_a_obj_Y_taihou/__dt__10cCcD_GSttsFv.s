lbl_80BA0EFC:
/* 80BA0EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0F00  7C 08 02 A6 */	mflr r0
/* 80BA0F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA0F0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA0F10  41 82 00 1C */	beq lbl_80BA0F2C
/* 80BA0F14  3C A0 80 BA */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BA1280@ha */
/* 80BA0F18  38 05 12 80 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BA1280@l */
/* 80BA0F1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA0F20  7C 80 07 35 */	extsh. r0, r4
/* 80BA0F24  40 81 00 08 */	ble lbl_80BA0F2C
/* 80BA0F28  4B 72 DE 15 */	bl __dl__FPv
lbl_80BA0F2C:
/* 80BA0F2C  7F E3 FB 78 */	mr r3, r31
/* 80BA0F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA0F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0F38  7C 08 03 A6 */	mtlr r0
/* 80BA0F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0F40  4E 80 00 20 */	blr 
