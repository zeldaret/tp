lbl_801D9504:
/* 801D9504  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9508  7C 08 02 A6 */	mflr r0
/* 801D950C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9510  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D9514  7C 7F 1B 78 */	mr r31, r3
/* 801D9518  38 80 00 00 */	li r4, 0
/* 801D951C  48 00 0D E9 */	bl setAButtonString__14dMenu_Insect_cFUs
/* 801D9520  7F E3 FB 78 */	mr r3, r31
/* 801D9524  38 80 03 F9 */	li r4, 0x3f9
/* 801D9528  48 00 0E 8D */	bl setBButtonString__14dMenu_Insect_cFUs
/* 801D952C  88 1F 00 F6 */	lbz r0, 0xf6(r31)
/* 801D9530  28 00 00 01 */	cmplwi r0, 1
/* 801D9534  40 82 00 20 */	bne lbl_801D9554
/* 801D9538  7F E3 FB 78 */	mr r3, r31
/* 801D953C  88 9F 00 F4 */	lbz r4, 0xf4(r31)
/* 801D9540  88 BF 00 F5 */	lbz r5, 0xf5(r31)
/* 801D9544  48 00 08 89 */	bl getInsectItemID__14dMenu_Insect_cFii
/* 801D9548  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801D954C  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801D9550  98 64 00 C3 */	stb r3, 0xc3(r4)
lbl_801D9554:
/* 801D9554  38 00 00 52 */	li r0, 0x52
/* 801D9558  90 01 00 08 */	stw r0, 8(r1)
/* 801D955C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D9560  38 81 00 08 */	addi r4, r1, 8
/* 801D9564  38 A0 00 00 */	li r5, 0
/* 801D9568  38 C0 00 00 */	li r6, 0
/* 801D956C  38 E0 00 00 */	li r7, 0
/* 801D9570  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D9574  FC 40 08 90 */	fmr f2, f1
/* 801D9578  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801D957C  FC 80 18 90 */	fmr f4, f3
/* 801D9580  39 00 00 00 */	li r8, 0
/* 801D9584  48 0D 24 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801D9588  48 04 54 49 */	bl dMeter2Info_set2DVibration__Fv
/* 801D958C  38 00 00 00 */	li r0, 0
/* 801D9590  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801D9594  B0 03 00 16 */	sth r0, 0x16(r3)
/* 801D9598  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D959C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D95A0  7C 08 03 A6 */	mtlr r0
/* 801D95A4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D95A8  4E 80 00 20 */	blr 
