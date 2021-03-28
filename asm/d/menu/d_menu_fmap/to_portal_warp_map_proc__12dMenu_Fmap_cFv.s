lbl_801C8B0C:
/* 801C8B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C8B10  7C 08 02 A6 */	mflr r0
/* 801C8B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C8B18  A8 83 02 14 */	lha r4, 0x214(r3)
/* 801C8B1C  38 04 FF FF */	addi r0, r4, -1
/* 801C8B20  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801C8B24  A8 03 02 14 */	lha r0, 0x214(r3)
/* 801C8B28  2C 00 00 00 */	cmpwi r0, 0
/* 801C8B2C  41 81 00 0C */	bgt lbl_801C8B38
/* 801C8B30  38 80 00 08 */	li r4, 8
/* 801C8B34  48 00 2B 9D */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C8B38:
/* 801C8B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C8B3C  7C 08 03 A6 */	mtlr r0
/* 801C8B40  38 21 00 10 */	addi r1, r1, 0x10
/* 801C8B44  4E 80 00 20 */	blr 
