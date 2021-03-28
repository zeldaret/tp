lbl_801D95AC:
/* 801D95AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D95B0  7C 08 02 A6 */	mflr r0
/* 801D95B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D95B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D95BC  93 C1 00 08 */	stw r30, 8(r1)
/* 801D95C0  7C 7E 1B 78 */	mr r30, r3
/* 801D95C4  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801D95C8  38 80 00 0A */	li r4, 0xa
/* 801D95CC  38 A0 00 FF */	li r5, 0xff
/* 801D95D0  38 C0 00 00 */	li r6, 0
/* 801D95D4  38 E0 00 01 */	li r7, 1
/* 801D95D8  48 07 C2 A1 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801D95DC  7C 7F 1B 78 */	mr r31, r3
/* 801D95E0  88 1E 00 F6 */	lbz r0, 0xf6(r30)
/* 801D95E4  28 00 00 01 */	cmplwi r0, 1
/* 801D95E8  40 82 00 28 */	bne lbl_801D9610
/* 801D95EC  7F C3 F3 78 */	mr r3, r30
/* 801D95F0  88 9E 00 F4 */	lbz r4, 0xf4(r30)
/* 801D95F4  88 BE 00 F5 */	lbz r5, 0xf5(r30)
/* 801D95F8  48 00 08 29 */	bl isGiveInsect__14dMenu_Insect_cFii
/* 801D95FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9600  40 82 00 10 */	bne lbl_801D9610
/* 801D9604  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801D9608  48 06 10 79 */	bl selAnimeEnd__17dMsgScrn3Select_cFv
/* 801D960C  48 00 00 08 */	b lbl_801D9614
lbl_801D9610:
/* 801D9610  38 60 00 01 */	li r3, 1
lbl_801D9614:
/* 801D9614  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801D9618  41 82 00 14 */	beq lbl_801D962C
/* 801D961C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9620  41 82 00 0C */	beq lbl_801D962C
/* 801D9624  38 00 00 00 */	li r0, 0
/* 801D9628  98 1E 00 F3 */	stb r0, 0xf3(r30)
lbl_801D962C:
/* 801D962C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9630  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D9634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9638  7C 08 03 A6 */	mtlr r0
/* 801D963C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9640  4E 80 00 20 */	blr 
