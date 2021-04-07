lbl_802074D4:
/* 802074D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802074D8  7C 08 02 A6 */	mflr r0
/* 802074DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802074E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802074E4  7C 7F 1B 78 */	mr r31, r3
/* 802074E8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 802074EC  48 04 E3 3D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802074F0  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 802074F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802074F8  41 82 00 B4 */	beq lbl_802075AC
/* 802074FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80207500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80207504  88 03 5E 4E */	lbz r0, 0x5e4e(r3)
/* 80207508  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020750C  41 82 00 20 */	beq lbl_8020752C
/* 80207510  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80207514  FC 20 00 90 */	fmr f1, f0
/* 80207518  48 04 E2 B9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020751C  38 00 00 05 */	li r0, 5
/* 80207520  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80207524  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207528  48 00 00 2C */	b lbl_80207554
lbl_8020752C:
/* 8020752C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80207530  FC 20 00 90 */	fmr f1, f0
/* 80207534  48 04 E2 9D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207538  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020753C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80207540  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80207544  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80207548  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8020754C  38 A0 00 05 */	li r5, 5
/* 80207550  48 01 35 55 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80207554:
/* 80207554  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80207558  48 04 E2 D1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020755C  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80207560  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80207564  40 82 00 48 */	bne lbl_802075AC
/* 80207568  88 1F 04 C3 */	lbz r0, 0x4c3(r31)
/* 8020756C  28 00 00 00 */	cmplwi r0, 0
/* 80207570  40 82 00 3C */	bne lbl_802075AC
/* 80207574  38 00 00 56 */	li r0, 0x56
/* 80207578  90 01 00 08 */	stw r0, 8(r1)
/* 8020757C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80207580  38 81 00 08 */	addi r4, r1, 8
/* 80207584  38 A0 00 00 */	li r5, 0
/* 80207588  38 C0 00 00 */	li r6, 0
/* 8020758C  38 E0 00 00 */	li r7, 0
/* 80207590  FC 20 10 90 */	fmr f1, f2
/* 80207594  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80207598  FC 80 18 90 */	fmr f4, f3
/* 8020759C  39 00 00 00 */	li r8, 0
/* 802075A0  48 0A 43 E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802075A4  38 00 00 01 */	li r0, 1
/* 802075A8  98 1F 04 C3 */	stb r0, 0x4c3(r31)
lbl_802075AC:
/* 802075AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802075B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802075B4  7C 08 03 A6 */	mtlr r0
/* 802075B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802075BC  4E 80 00 20 */	blr 
