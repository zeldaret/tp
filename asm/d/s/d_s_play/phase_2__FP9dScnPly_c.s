lbl_8025A4F8:
/* 8025A4F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025A4FC  7C 08 02 A6 */	mflr r0
/* 8025A500  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025A504  39 61 00 20 */	addi r11, r1, 0x20
/* 8025A508  48 10 7C D5 */	bl _savegpr_29
/* 8025A50C  7C 7D 1B 78 */	mr r29, r3
/* 8025A510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A518  3C 63 00 02 */	addis r3, r3, 2
/* 8025A51C  38 80 00 80 */	li r4, 0x80
/* 8025A520  38 63 C2 F8 */	addi r3, r3, -15624
/* 8025A524  4B DE 1F 4D */	bl syncAllRes__14dRes_control_cFP11dRes_info_ci
/* 8025A528  2C 03 00 00 */	cmpwi r3, 0
/* 8025A52C  41 80 00 10 */	blt lbl_8025A53C
/* 8025A530  41 82 00 0C */	beq lbl_8025A53C
/* 8025A534  38 60 00 00 */	li r3, 0
/* 8025A538  48 00 00 84 */	b lbl_8025A5BC
lbl_8025A53C:
/* 8025A53C  38 60 00 00 */	li r3, 0
/* 8025A540  4B DD 24 3D */	bl getLayerNo__14dComIfG_play_cFi
/* 8025A544  7C 7F 1B 78 */	mr r31, r3
/* 8025A548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A54C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A550  3B C3 4E 20 */	addi r30, r3, 0x4e20
/* 8025A554  7F C3 F3 78 */	mr r3, r30
/* 8025A558  81 9E 00 00 */	lwz r12, 0(r30)
/* 8025A55C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8025A560  7D 89 03 A6 */	mtctr r12
/* 8025A564  4E 80 04 21 */	bctrl 
/* 8025A568  7F E4 FB 78 */	mr r4, r31
/* 8025A56C  4B DC B1 CD */	bl dStage_stagInfo_GetParticleNo__FP21stage_stag_info_classi
/* 8025A570  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8025A574  28 04 00 FF */	cmplwi r4, 0xff
/* 8025A578  40 82 00 24 */	bne lbl_8025A59C
/* 8025A57C  7F C3 F3 78 */	mr r3, r30
/* 8025A580  81 9E 00 00 */	lwz r12, 0(r30)
/* 8025A584  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8025A588  7D 89 03 A6 */	mtctr r12
/* 8025A58C  4E 80 04 21 */	bctrl 
/* 8025A590  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8025A594  54 00 EE 3E */	rlwinm r0, r0, 0x1d, 0x18, 0x1f
/* 8025A598  7C 04 03 78 */	mr r4, r0
lbl_8025A59C:
/* 8025A59C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A5A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A5A4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8025A5A8  38 BD 01 CC */	addi r5, r29, 0x1cc
/* 8025A5AC  4B DF 18 51 */	bl readScene__13dPa_control_cFUcPP21mDoDvdThd_toMainRam_c
/* 8025A5B0  38 7D 01 D0 */	addi r3, r29, 0x1d0
/* 8025A5B4  4B FD DA 59 */	bl readMessageGroup__12dMsgObject_cFPP25mDoDvdThd_mountXArchive_c
/* 8025A5B8  38 60 00 02 */	li r3, 2
lbl_8025A5BC:
/* 8025A5BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8025A5C0  48 10 7C 69 */	bl _restgpr_29
/* 8025A5C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025A5C8  7C 08 03 A6 */	mtlr r0
/* 8025A5CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8025A5D0  4E 80 00 20 */	blr 
