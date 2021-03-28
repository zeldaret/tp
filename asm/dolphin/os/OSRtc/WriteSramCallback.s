lbl_8033FE90:
/* 8033FE90  7C 08 02 A6 */	mflr r0
/* 8033FE94  3C 60 80 45 */	lis r3, Scb@ha
/* 8033FE98  90 01 00 04 */	stw r0, 4(r1)
/* 8033FE9C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8033FEA0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8033FEA4  3B E3 BB 20 */	addi r31, r3, Scb@l
/* 8033FEA8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8033FEAC  3B DF 00 40 */	addi r30, r31, 0x40
/* 8033FEB0  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 8033FEB4  7C 7F 22 14 */	add r3, r31, r4
/* 8033FEB8  20 A4 00 40 */	subfic r5, r4, 0x40
/* 8033FEBC  48 00 00 35 */	bl WriteSram
/* 8033FEC0  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 8033FEC4  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8033FEC8  2C 00 00 00 */	cmpwi r0, 0
/* 8033FECC  41 82 00 0C */	beq lbl_8033FED8
/* 8033FED0  38 00 00 40 */	li r0, 0x40
/* 8033FED4  90 1E 00 00 */	stw r0, 0(r30)
lbl_8033FED8:
/* 8033FED8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033FEDC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033FEE0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8033FEE4  38 21 00 18 */	addi r1, r1, 0x18
/* 8033FEE8  7C 08 03 A6 */	mtlr r0
/* 8033FEEC  4E 80 00 20 */	blr 
