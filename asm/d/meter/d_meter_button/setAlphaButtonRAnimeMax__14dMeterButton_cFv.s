lbl_80207358:
/* 80207358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020735C  7C 08 02 A6 */	mflr r0
/* 80207360  90 01 00 24 */	stw r0, 0x24(r1)
/* 80207364  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80207368  7C 7F 1B 78 */	mr r31, r3
/* 8020736C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80207370  48 04 E4 B9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207374  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80207378  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020737C  41 82 00 B4 */	beq lbl_80207430
/* 80207380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80207384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80207388  88 03 5E 42 */	lbz r0, 0x5e42(r3)
/* 8020738C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207390  41 82 00 20 */	beq lbl_802073B0
/* 80207394  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80207398  FC 20 00 90 */	fmr f1, f0
/* 8020739C  48 04 E4 35 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802073A0  38 00 00 05 */	li r0, 5
/* 802073A4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802073A8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802073AC  48 00 00 2C */	b lbl_802073D8
lbl_802073B0:
/* 802073B0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802073B4  FC 20 00 90 */	fmr f1, f0
/* 802073B8  48 04 E4 19 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802073BC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802073C0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802073C4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802073C8  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 802073CC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802073D0  38 A0 00 05 */	li r5, 5
/* 802073D4  48 01 36 D1 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802073D8:
/* 802073D8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802073DC  48 04 E4 4D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802073E0  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 802073E4  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802073E8  40 82 00 48 */	bne lbl_80207430
/* 802073EC  88 1F 04 C2 */	lbz r0, 0x4c2(r31)
/* 802073F0  28 00 00 00 */	cmplwi r0, 0
/* 802073F4  40 82 00 3C */	bne lbl_80207430
/* 802073F8  38 00 00 56 */	li r0, 0x56
/* 802073FC  90 01 00 08 */	stw r0, 8(r1)
/* 80207400  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80207404  38 81 00 08 */	addi r4, r1, 8
/* 80207408  38 A0 00 00 */	li r5, 0
/* 8020740C  38 C0 00 00 */	li r6, 0
/* 80207410  38 E0 00 00 */	li r7, 0
/* 80207414  FC 20 10 90 */	fmr f1, f2
/* 80207418  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 8020741C  FC 80 18 90 */	fmr f4, f3
/* 80207420  39 00 00 00 */	li r8, 0
/* 80207424  48 0A 45 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80207428  38 00 00 01 */	li r0, 1
/* 8020742C  98 1F 04 C2 */	stb r0, 0x4c2(r31)
lbl_80207430:
/* 80207430  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80207434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80207438  7C 08 03 A6 */	mtlr r0
/* 8020743C  38 21 00 20 */	addi r1, r1, 0x20
/* 80207440  4E 80 00 20 */	blr 
