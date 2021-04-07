lbl_80834D94:
/* 80834D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80834D98  7C 08 02 A6 */	mflr r0
/* 80834D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80834DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80834DA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80834DA8  41 82 00 1C */	beq lbl_80834DC4
/* 80834DAC  3C A0 80 83 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80835438@ha */
/* 80834DB0  38 05 54 38 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80835438@l */
/* 80834DB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80834DB8  7C 80 07 35 */	extsh. r0, r4
/* 80834DBC  40 81 00 08 */	ble lbl_80834DC4
/* 80834DC0  4B A9 9F 7D */	bl __dl__FPv
lbl_80834DC4:
/* 80834DC4  7F E3 FB 78 */	mr r3, r31
/* 80834DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80834DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80834DD0  7C 08 03 A6 */	mtlr r0
/* 80834DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80834DD8  4E 80 00 20 */	blr 
