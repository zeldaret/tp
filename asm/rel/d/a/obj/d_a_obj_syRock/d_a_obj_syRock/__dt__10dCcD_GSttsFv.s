lbl_80D02AA0:
/* 80D02AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02AA4  7C 08 02 A6 */	mflr r0
/* 80D02AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02AAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D02AB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D02AB4  41 82 00 30 */	beq lbl_80D02AE4
/* 80D02AB8  3C 60 80 D0 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D02ABC  38 03 41 8C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D02AC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D02AC4  41 82 00 10 */	beq lbl_80D02AD4
/* 80D02AC8  3C 60 80 D0 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D02ACC  38 03 41 80 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D02AD0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D02AD4:
/* 80D02AD4  7C 80 07 35 */	extsh. r0, r4
/* 80D02AD8  40 81 00 0C */	ble lbl_80D02AE4
/* 80D02ADC  7F E3 FB 78 */	mr r3, r31
/* 80D02AE0  4B 5C C2 5C */	b __dl__FPv
lbl_80D02AE4:
/* 80D02AE4  7F E3 FB 78 */	mr r3, r31
/* 80D02AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D02AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02AF0  7C 08 03 A6 */	mtlr r0
/* 80D02AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02AF8  4E 80 00 20 */	blr 
