lbl_8024B9E8:
/* 8024B9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B9EC  7C 08 02 A6 */	mflr r0
/* 8024B9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B9F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024B9F8  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024B9FC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8024BA00  7C 1F 03 78 */	mr r31, r0
/* 8024BA04  40 82 00 10 */	bne lbl_8024BA14
/* 8024BA08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BA0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BA10  8B E3 5E A1 */	lbz r31, 0x5ea1(r3)
lbl_8024BA14:
/* 8024BA14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BA18  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8024BA1C  38 64 01 14 */	addi r3, r4, 0x114
/* 8024BA20  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 8024BA24  4B DE 89 1D */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 8024BA28  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8024BA2C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8024BA30  7C 00 18 50 */	subf r0, r0, r3
/* 8024BA34  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8024BA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024BA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BA40  7C 08 03 A6 */	mtlr r0
/* 8024BA44  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BA48  4E 80 00 20 */	blr 
