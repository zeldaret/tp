lbl_801CCE04:
/* 801CCE04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CCE08  7C 08 02 A6 */	mflr r0
/* 801CCE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CCE10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CCE14  7C 7F 1B 78 */	mr r31, r3
/* 801CCE18  38 80 00 0D */	li r4, 0xd
/* 801CCE1C  38 A0 00 09 */	li r5, 9
/* 801CCE20  48 00 02 ED */	bl drawIcon__12dMenu_Fmap_cFUci
/* 801CCE24  7F E3 FB 78 */	mr r3, r31
/* 801CCE28  38 80 00 0E */	li r4, 0xe
/* 801CCE2C  38 A0 00 0A */	li r5, 0xa
/* 801CCE30  48 00 02 DD */	bl drawIcon__12dMenu_Fmap_cFUci
/* 801CCE34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CCE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CCE3C  7C 08 03 A6 */	mtlr r0
/* 801CCE40  38 21 00 10 */	addi r1, r1, 0x10
/* 801CCE44  4E 80 00 20 */	blr 
