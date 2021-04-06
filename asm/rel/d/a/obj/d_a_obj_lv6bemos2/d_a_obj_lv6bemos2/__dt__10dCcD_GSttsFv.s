lbl_80C81AA0:
/* 80C81AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C81AA4  7C 08 02 A6 */	mflr r0
/* 80C81AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C81AAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C81AB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C81AB4  41 82 00 30 */	beq lbl_80C81AE4
/* 80C81AB8  3C 60 80 C8 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C81F74@ha */
/* 80C81ABC  38 03 1F 74 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C81F74@l */
/* 80C81AC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C81AC4  41 82 00 10 */	beq lbl_80C81AD4
/* 80C81AC8  3C 60 80 C8 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C81F68@ha */
/* 80C81ACC  38 03 1F 68 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C81F68@l */
/* 80C81AD0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C81AD4:
/* 80C81AD4  7C 80 07 35 */	extsh. r0, r4
/* 80C81AD8  40 81 00 0C */	ble lbl_80C81AE4
/* 80C81ADC  7F E3 FB 78 */	mr r3, r31
/* 80C81AE0  4B 64 D2 5D */	bl __dl__FPv
lbl_80C81AE4:
/* 80C81AE4  7F E3 FB 78 */	mr r3, r31
/* 80C81AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C81AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C81AF0  7C 08 03 A6 */	mtlr r0
/* 80C81AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C81AF8  4E 80 00 20 */	blr 
