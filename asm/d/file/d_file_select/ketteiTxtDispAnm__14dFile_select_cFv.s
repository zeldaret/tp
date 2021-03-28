lbl_8018D574:
/* 8018D574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018D578  7C 08 02 A6 */	mflr r0
/* 8018D57C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018D580  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D584  48 1D 4C 59 */	bl _savegpr_29
/* 8018D588  7C 7D 1B 78 */	mr r29, r3
/* 8018D58C  88 03 02 4B */	lbz r0, 0x24b(r3)
/* 8018D590  28 00 00 00 */	cmplwi r0, 0
/* 8018D594  41 82 00 44 */	beq lbl_8018D5D8
/* 8018D598  80 7D 02 44 */	lwz r3, 0x244(r29)
/* 8018D59C  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018D5A0  3B E4 C9 EC */	addi r31, r4, g_fsHIO@l
/* 8018D5A4  88 9F 00 07 */	lbz r4, 7(r31)
/* 8018D5A8  38 A0 00 00 */	li r5, 0
/* 8018D5AC  38 C0 00 FF */	li r6, 0xff
/* 8018D5B0  38 E0 00 00 */	li r7, 0
/* 8018D5B4  48 0C 82 C5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D5B8  7C 7E 1B 78 */	mr r30, r3
/* 8018D5BC  80 7D 02 3C */	lwz r3, 0x23c(r29)
/* 8018D5C0  88 9F 00 07 */	lbz r4, 7(r31)
/* 8018D5C4  38 A0 00 80 */	li r5, 0x80
/* 8018D5C8  38 C0 00 FF */	li r6, 0xff
/* 8018D5CC  38 E0 00 00 */	li r7, 0
/* 8018D5D0  48 0C 82 A9 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D5D4  48 00 00 40 */	b lbl_8018D614
lbl_8018D5D8:
/* 8018D5D8  80 7D 02 44 */	lwz r3, 0x244(r29)
/* 8018D5DC  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018D5E0  3B E4 C9 EC */	addi r31, r4, g_fsHIO@l
/* 8018D5E4  88 9F 00 07 */	lbz r4, 7(r31)
/* 8018D5E8  38 A0 00 FF */	li r5, 0xff
/* 8018D5EC  38 C0 00 00 */	li r6, 0
/* 8018D5F0  38 E0 00 00 */	li r7, 0
/* 8018D5F4  48 0C 82 85 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D5F8  7C 7E 1B 78 */	mr r30, r3
/* 8018D5FC  80 7D 02 3C */	lwz r3, 0x23c(r29)
/* 8018D600  88 9F 00 07 */	lbz r4, 7(r31)
/* 8018D604  38 A0 00 FF */	li r5, 0xff
/* 8018D608  38 C0 00 80 */	li r6, 0x80
/* 8018D60C  38 E0 00 00 */	li r7, 0
/* 8018D610  48 0C 82 69 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
lbl_8018D614:
/* 8018D614  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018D618  28 00 00 01 */	cmplwi r0, 1
/* 8018D61C  40 82 00 18 */	bne lbl_8018D634
/* 8018D620  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018D624  28 00 00 01 */	cmplwi r0, 1
/* 8018D628  40 82 00 0C */	bne lbl_8018D634
/* 8018D62C  38 60 00 01 */	li r3, 1
/* 8018D630  48 00 00 08 */	b lbl_8018D638
lbl_8018D634:
/* 8018D634  38 60 00 00 */	li r3, 0
lbl_8018D638:
/* 8018D638  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D63C  48 1D 4B ED */	bl _restgpr_29
/* 8018D640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018D644  7C 08 03 A6 */	mtlr r0
/* 8018D648  38 21 00 20 */	addi r1, r1, 0x20
/* 8018D64C  4E 80 00 20 */	blr 
