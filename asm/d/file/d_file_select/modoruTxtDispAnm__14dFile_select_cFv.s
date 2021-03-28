lbl_8018D41C:
/* 8018D41C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018D420  7C 08 02 A6 */	mflr r0
/* 8018D424  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018D428  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D42C  48 1D 4D B1 */	bl _savegpr_29
/* 8018D430  7C 7D 1B 78 */	mr r29, r3
/* 8018D434  88 03 02 4A */	lbz r0, 0x24a(r3)
/* 8018D438  28 00 00 00 */	cmplwi r0, 0
/* 8018D43C  41 82 00 44 */	beq lbl_8018D480
/* 8018D440  80 7D 02 40 */	lwz r3, 0x240(r29)
/* 8018D444  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018D448  3B E4 C9 EC */	addi r31, r4, g_fsHIO@l
/* 8018D44C  88 9F 00 07 */	lbz r4, 7(r31)
/* 8018D450  38 A0 00 00 */	li r5, 0
/* 8018D454  38 C0 00 FF */	li r6, 0xff
/* 8018D458  38 E0 00 00 */	li r7, 0
/* 8018D45C  48 0C 84 1D */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D460  7C 7E 1B 78 */	mr r30, r3
/* 8018D464  80 7D 02 38 */	lwz r3, 0x238(r29)
/* 8018D468  88 9F 00 07 */	lbz r4, 7(r31)
/* 8018D46C  38 A0 00 80 */	li r5, 0x80
/* 8018D470  38 C0 00 FF */	li r6, 0xff
/* 8018D474  38 E0 00 00 */	li r7, 0
/* 8018D478  48 0C 84 01 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D47C  48 00 00 40 */	b lbl_8018D4BC
lbl_8018D480:
/* 8018D480  80 7D 02 40 */	lwz r3, 0x240(r29)
/* 8018D484  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018D488  3B E4 C9 EC */	addi r31, r4, g_fsHIO@l
/* 8018D48C  88 9F 00 07 */	lbz r4, 7(r31)
/* 8018D490  38 A0 00 FF */	li r5, 0xff
/* 8018D494  38 C0 00 00 */	li r6, 0
/* 8018D498  38 E0 00 00 */	li r7, 0
/* 8018D49C  48 0C 83 DD */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D4A0  7C 7E 1B 78 */	mr r30, r3
/* 8018D4A4  80 7D 02 38 */	lwz r3, 0x238(r29)
/* 8018D4A8  88 9F 00 07 */	lbz r4, 7(r31)
/* 8018D4AC  38 A0 00 FF */	li r5, 0xff
/* 8018D4B0  38 C0 00 80 */	li r6, 0x80
/* 8018D4B4  38 E0 00 00 */	li r7, 0
/* 8018D4B8  48 0C 83 C1 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
lbl_8018D4BC:
/* 8018D4BC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018D4C0  28 00 00 01 */	cmplwi r0, 1
/* 8018D4C4  40 82 00 18 */	bne lbl_8018D4DC
/* 8018D4C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018D4CC  28 00 00 01 */	cmplwi r0, 1
/* 8018D4D0  40 82 00 0C */	bne lbl_8018D4DC
/* 8018D4D4  38 60 00 01 */	li r3, 1
/* 8018D4D8  48 00 00 08 */	b lbl_8018D4E0
lbl_8018D4DC:
/* 8018D4DC  38 60 00 00 */	li r3, 0
lbl_8018D4E0:
/* 8018D4E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D4E4  48 1D 4D 45 */	bl _restgpr_29
/* 8018D4E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018D4EC  7C 08 03 A6 */	mtlr r0
/* 8018D4F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8018D4F4  4E 80 00 20 */	blr 
