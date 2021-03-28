lbl_80074ABC:
/* 80074ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074AC0  7C 08 02 A6 */	mflr r0
/* 80074AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80074ACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80074AD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80074AD4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80074AD8  4B FF FB 51 */	bl GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo
/* 80074ADC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80074AE0  41 82 00 48 */	beq lbl_80074B28
/* 80074AE4  81 83 00 04 */	lwz r12, 4(r3)
/* 80074AE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80074AEC  7D 89 03 A6 */	mtctr r12
/* 80074AF0  4E 80 04 21 */	bctrl 
/* 80074AF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80074AF8  41 82 00 0C */	beq lbl_80074B04
/* 80074AFC  38 60 00 00 */	li r3, 0
/* 80074B00  48 00 00 2C */	b lbl_80074B2C
lbl_80074B04:
/* 80074B04  7F E3 FB 78 */	mr r3, r31
/* 80074B08  81 9F 00 04 */	lwz r12, 4(r31)
/* 80074B0C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80074B10  7D 89 03 A6 */	mtctr r12
/* 80074B14  4E 80 04 21 */	bctrl 
/* 80074B18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80074B1C  41 82 00 0C */	beq lbl_80074B28
/* 80074B20  38 60 00 01 */	li r3, 1
/* 80074B24  48 00 00 08 */	b lbl_80074B2C
lbl_80074B28:
/* 80074B28  38 60 00 00 */	li r3, 0
lbl_80074B2C:
/* 80074B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80074B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074B34  7C 08 03 A6 */	mtlr r0
/* 80074B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80074B3C  4E 80 00 20 */	blr 
