lbl_804ACB94:
/* 804ACB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ACB98  7C 08 02 A6 */	mflr r0
/* 804ACB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ACBA0  88 83 0F 80 */	lbz r4, 0xf80(r3)
/* 804ACBA4  7C 80 07 75 */	extsb. r0, r4
/* 804ACBA8  41 82 00 64 */	beq lbl_804ACC0C
/* 804ACBAC  7C 80 07 74 */	extsb r0, r4
/* 804ACBB0  2C 00 00 04 */	cmpwi r0, 4
/* 804ACBB4  40 82 00 30 */	bne lbl_804ACBE4
/* 804ACBB8  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002008B@ha */
/* 804ACBBC  38 04 00 8B */	addi r0, r4, 0x008B /* 0x0002008B@l */
/* 804ACBC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804ACBC4  38 81 00 0C */	addi r4, r1, 0xc
/* 804ACBC8  38 A0 00 00 */	li r5, 0
/* 804ACBCC  38 C0 FF FF */	li r6, -1
/* 804ACBD0  85 83 10 B4 */	lwzu r12, 0x10b4(r3)
/* 804ACBD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804ACBD8  7D 89 03 A6 */	mtctr r12
/* 804ACBDC  4E 80 04 21 */	bctrl 
/* 804ACBE0  48 00 00 2C */	b lbl_804ACC0C
lbl_804ACBE4:
/* 804ACBE4  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200D8@ha */
/* 804ACBE8  38 04 00 D8 */	addi r0, r4, 0x00D8 /* 0x000200D8@l */
/* 804ACBEC  90 01 00 08 */	stw r0, 8(r1)
/* 804ACBF0  38 81 00 08 */	addi r4, r1, 8
/* 804ACBF4  38 A0 00 00 */	li r5, 0
/* 804ACBF8  38 C0 FF FF */	li r6, -1
/* 804ACBFC  85 83 10 B4 */	lwzu r12, 0x10b4(r3)
/* 804ACC00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804ACC04  7D 89 03 A6 */	mtctr r12
/* 804ACC08  4E 80 04 21 */	bctrl 
lbl_804ACC0C:
/* 804ACC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ACC10  7C 08 03 A6 */	mtlr r0
/* 804ACC14  38 21 00 10 */	addi r1, r1, 0x10
/* 804ACC18  4E 80 00 20 */	blr 
