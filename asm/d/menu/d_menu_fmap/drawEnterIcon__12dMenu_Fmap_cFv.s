lbl_801CD210:
/* 801CD210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CD214  7C 08 02 A6 */	mflr r0
/* 801CD218  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CD21C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CD220  7C 7F 1B 78 */	mr r31, r3
/* 801CD224  38 80 00 01 */	li r4, 1
/* 801CD228  38 A0 00 14 */	li r5, 0x14
/* 801CD22C  4B FF FE E1 */	bl drawIcon__12dMenu_Fmap_cFUci
/* 801CD230  7F E3 FB 78 */	mr r3, r31
/* 801CD234  38 80 00 08 */	li r4, 8
/* 801CD238  38 A0 00 16 */	li r5, 0x16
/* 801CD23C  4B FF FE D1 */	bl drawIcon__12dMenu_Fmap_cFUci
/* 801CD240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CD244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CD248  7C 08 03 A6 */	mtlr r0
/* 801CD24C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CD250  4E 80 00 20 */	blr 
