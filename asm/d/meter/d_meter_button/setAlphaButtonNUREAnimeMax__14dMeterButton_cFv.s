lbl_80208708:
/* 80208708  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020870C  7C 08 02 A6 */	mflr r0
/* 80208710  90 01 00 24 */	stw r0, 0x24(r1)
/* 80208714  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80208718  7C 7F 1B 78 */	mr r31, r3
/* 8020871C  80 63 00 54 */	lwz r3, 0x54(r3)
/* 80208720  28 03 00 00 */	cmplwi r3, 0
/* 80208724  41 82 00 D0 */	beq lbl_802087F4
/* 80208728  48 04 D1 01 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020872C  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80208730  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208734  41 82 00 C0 */	beq lbl_802087F4
/* 80208738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020873C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80208740  88 03 5E 4A */	lbz r0, 0x5e4a(r3)
/* 80208744  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80208748  40 82 00 10 */	bne lbl_80208758
/* 8020874C  88 03 5E 4B */	lbz r0, 0x5e4b(r3)
/* 80208750  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80208754  41 82 00 20 */	beq lbl_80208774
lbl_80208758:
/* 80208758  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8020875C  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 80208760  48 04 D0 71 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208764  38 00 00 05 */	li r0, 5
/* 80208768  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8020876C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208770  48 00 00 2C */	b lbl_8020879C
lbl_80208774:
/* 80208774  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 80208778  FC 20 00 90 */	fmr f1, f0
/* 8020877C  48 04 D0 55 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208780  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80208784  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80208788  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020878C  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80208790  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 80208794  38 A0 00 05 */	li r5, 5
/* 80208798  48 01 23 0D */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8020879C:
/* 8020879C  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 802087A0  48 04 D0 89 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802087A4  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 802087A8  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802087AC  40 82 00 48 */	bne lbl_802087F4
/* 802087B0  88 1F 04 CE */	lbz r0, 0x4ce(r31)
/* 802087B4  28 00 00 00 */	cmplwi r0, 0
/* 802087B8  40 82 00 3C */	bne lbl_802087F4
/* 802087BC  38 00 00 56 */	li r0, 0x56
/* 802087C0  90 01 00 08 */	stw r0, 8(r1)
/* 802087C4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802087C8  38 81 00 08 */	addi r4, r1, 8
/* 802087CC  38 A0 00 00 */	li r5, 0
/* 802087D0  38 C0 00 00 */	li r6, 0
/* 802087D4  38 E0 00 00 */	li r7, 0
/* 802087D8  FC 20 10 90 */	fmr f1, f2
/* 802087DC  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 802087E0  FC 80 18 90 */	fmr f4, f3
/* 802087E4  39 00 00 00 */	li r8, 0
/* 802087E8  48 0A 31 9D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802087EC  38 00 00 01 */	li r0, 1
/* 802087F0  98 1F 04 CE */	stb r0, 0x4ce(r31)
lbl_802087F4:
/* 802087F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802087F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802087FC  7C 08 03 A6 */	mtlr r0
/* 80208800  38 21 00 20 */	addi r1, r1, 0x20
/* 80208804  4E 80 00 20 */	blr 
