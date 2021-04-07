lbl_80BBBEA0:
/* 80BBBEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBBEA4  7C 08 02 A6 */	mflr r0
/* 80BBBEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBBEAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBBEB0  7C 7F 1B 78 */	mr r31, r3
/* 80BBBEB4  3C 60 80 BC */	lis r3, l_findCount@ha /* 0x80BBC808@ha */
/* 80BBBEB8  80 03 C8 08 */	lwz r0, l_findCount@l(r3)  /* 0x80BBC808@l */
/* 80BBBEBC  28 00 00 64 */	cmplwi r0, 0x64
/* 80BBBEC0  40 80 00 74 */	bge lbl_80BBBF34
/* 80BBBEC4  28 1F 00 00 */	cmplwi r31, 0
/* 80BBBEC8  41 82 00 6C */	beq lbl_80BBBF34
/* 80BBBECC  7C 1F 20 40 */	cmplw r31, r4
/* 80BBBED0  41 82 00 64 */	beq lbl_80BBBF34
/* 80BBBED4  28 1F 00 00 */	cmplwi r31, 0
/* 80BBBED8  41 82 00 0C */	beq lbl_80BBBEE4
/* 80BBBEDC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80BBBEE0  48 00 00 08 */	b lbl_80BBBEE8
lbl_80BBBEE4:
/* 80BBBEE4  38 60 FF FF */	li r3, -1
lbl_80BBBEE8:
/* 80BBBEE8  4B 46 54 B5 */	bl fpcEx_IsExist__FUi
/* 80BBBEEC  2C 03 00 00 */	cmpwi r3, 0
/* 80BBBEF0  41 82 00 44 */	beq lbl_80BBBF34
/* 80BBBEF4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80BBBEF8  2C 00 03 08 */	cmpwi r0, 0x308
/* 80BBBEFC  40 82 00 38 */	bne lbl_80BBBF34
/* 80BBBF00  80 7F 09 94 */	lwz r3, 0x994(r31)
/* 80BBBF04  3C 03 00 01 */	addis r0, r3, 1
/* 80BBBF08  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BBBF0C  41 82 00 28 */	beq lbl_80BBBF34
/* 80BBBF10  3C 60 80 BC */	lis r3, l_findCount@ha /* 0x80BBC808@ha */
/* 80BBBF14  38 A3 C8 08 */	addi r5, r3, l_findCount@l /* 0x80BBC808@l */
/* 80BBBF18  80 85 00 00 */	lwz r4, 0(r5)
/* 80BBBF1C  54 80 10 3A */	slwi r0, r4, 2
/* 80BBBF20  3C 60 80 BC */	lis r3, l_findActorPtrs@ha /* 0x80BBC678@ha */
/* 80BBBF24  38 63 C6 78 */	addi r3, r3, l_findActorPtrs@l /* 0x80BBC678@l */
/* 80BBBF28  7F E3 01 2E */	stwx r31, r3, r0
/* 80BBBF2C  38 04 00 01 */	addi r0, r4, 1
/* 80BBBF30  90 05 00 00 */	stw r0, 0(r5)
lbl_80BBBF34:
/* 80BBBF34  38 60 00 00 */	li r3, 0
/* 80BBBF38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBBF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBBF40  7C 08 03 A6 */	mtlr r0
/* 80BBBF44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBBF48  4E 80 00 20 */	blr 
