lbl_80BA6A98:
/* 80BA6A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6A9C  7C 08 02 A6 */	mflr r0
/* 80BA6AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA6AA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA6AAC  41 82 00 1C */	beq lbl_80BA6AC8
/* 80BA6AB0  3C A0 80 BA */	lis r5, __vt__10cCcD_GStts@ha
/* 80BA6AB4  38 05 6D E4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80BA6AB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA6ABC  7C 80 07 35 */	extsh. r0, r4
/* 80BA6AC0  40 81 00 08 */	ble lbl_80BA6AC8
/* 80BA6AC4  4B 72 82 78 */	b __dl__FPv
lbl_80BA6AC8:
/* 80BA6AC8  7F E3 FB 78 */	mr r3, r31
/* 80BA6ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA6AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6AD4  7C 08 03 A6 */	mtlr r0
/* 80BA6AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6ADC  4E 80 00 20 */	blr 
