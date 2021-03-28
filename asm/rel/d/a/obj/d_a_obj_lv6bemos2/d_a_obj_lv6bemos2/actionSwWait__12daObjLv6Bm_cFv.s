lbl_80C7FFB8:
/* 80C7FFB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7FFBC  7C 08 02 A6 */	mflr r0
/* 80C7FFC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C7FFC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7FFC8  4B 6E 22 14 */	b _savegpr_29
/* 80C7FFCC  7C 7F 1B 78 */	mr r31, r3
/* 80C7FFD0  3C 60 80 C8 */	lis r3, l_eye_offset@ha
/* 80C7FFD4  3B C3 1C 2C */	addi r30, r3, l_eye_offset@l
/* 80C7FFD8  88 1F 0A 16 */	lbz r0, 0xa16(r31)
/* 80C7FFDC  2C 00 00 01 */	cmpwi r0, 1
/* 80C7FFE0  41 82 01 18 */	beq lbl_80C800F8
/* 80C7FFE4  40 80 00 10 */	bge lbl_80C7FFF4
/* 80C7FFE8  2C 00 00 00 */	cmpwi r0, 0
/* 80C7FFEC  40 80 00 14 */	bge lbl_80C80000
/* 80C7FFF0  48 00 02 A4 */	b lbl_80C80294
lbl_80C7FFF4:
/* 80C7FFF4  2C 00 00 03 */	cmpwi r0, 3
/* 80C7FFF8  40 80 02 9C */	bge lbl_80C80294
/* 80C7FFFC  48 00 01 40 */	b lbl_80C8013C
lbl_80C80000:
/* 80C80000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C80004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C80008  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C8000C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C80010  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C80014  7C 05 07 74 */	extsb r5, r0
/* 80C80018  4B 3B 53 48 */	b isSwitch__10dSv_info_cCFii
/* 80C8001C  2C 03 00 00 */	cmpwi r3, 0
/* 80C80020  41 82 02 74 */	beq lbl_80C80294
/* 80C80024  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C80028  38 63 1D 24 */	addi r3, r3, l_arcName@l
/* 80C8002C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80030  38 80 00 16 */	li r4, 0x16
/* 80C80034  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C80038  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C8003C  3C A5 00 02 */	addis r5, r5, 2
/* 80C80040  38 C0 00 80 */	li r6, 0x80
/* 80C80044  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C80048  4B 3B C2 A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C8004C  7C 65 1B 78 */	mr r5, r3
/* 80C80050  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C80054  80 83 00 04 */	lwz r4, 4(r3)
/* 80C80058  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C8005C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C80060  38 C0 00 01 */	li r6, 1
/* 80C80064  38 E0 00 00 */	li r7, 0
/* 80C80068  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C8006C  39 00 00 00 */	li r8, 0
/* 80C80070  39 20 FF FF */	li r9, -1
/* 80C80074  4B 38 D6 98 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C80078  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80C8007C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C80080  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80C80084  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C80088  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80C8008C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C80090  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80C80094  EC 01 00 2A */	fadds f0, f1, f0
/* 80C80098  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C8009C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C800A0  7C 03 07 74 */	extsb r3, r0
/* 80C800A4  4B 3A CF C8 */	b dComIfGp_getReverb__Fi
/* 80C800A8  7C 67 1B 78 */	mr r7, r3
/* 80C800AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701DB@ha */
/* 80C800B0  38 03 01 DB */	addi r0, r3, 0x01DB /* 0x000701DB@l */
/* 80C800B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C800B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C800BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C800C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C800C4  38 81 00 0C */	addi r4, r1, 0xc
/* 80C800C8  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C800CC  38 C0 00 00 */	li r6, 0
/* 80C800D0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C800D4  FC 40 08 90 */	fmr f2, f1
/* 80C800D8  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80C800DC  FC 80 18 90 */	fmr f4, f3
/* 80C800E0  39 00 00 00 */	li r8, 0
/* 80C800E4  4B 62 B8 A0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C800E8  38 00 00 01 */	li r0, 1
/* 80C800EC  98 1F 0A 1B */	stb r0, 0xa1b(r31)
/* 80C800F0  98 1F 0A 16 */	stb r0, 0xa16(r31)
/* 80C800F4  48 00 01 A0 */	b lbl_80C80294
lbl_80C800F8:
/* 80C800F8  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C800FC  38 80 00 01 */	li r4, 1
/* 80C80100  88 03 00 05 */	lbz r0, 5(r3)
/* 80C80104  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C80108  40 82 00 18 */	bne lbl_80C80120
/* 80C8010C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80C80110  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C80114  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C80118  41 82 00 08 */	beq lbl_80C80120
/* 80C8011C  38 80 00 00 */	li r4, 0
lbl_80C80120:
/* 80C80120  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C80124  41 82 01 70 */	beq lbl_80C80294
/* 80C80128  38 00 00 00 */	li r0, 0
/* 80C8012C  98 1F 0A 11 */	stb r0, 0xa11(r31)
/* 80C80130  38 00 00 02 */	li r0, 2
/* 80C80134  98 1F 0A 16 */	stb r0, 0xa16(r31)
/* 80C80138  48 00 01 5C */	b lbl_80C80294
lbl_80C8013C:
/* 80C8013C  38 7F 0A 11 */	addi r3, r31, 0xa11
/* 80C80140  48 00 1A 8D */	bl func_80C81BCC
/* 80C80144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C80148  40 82 01 4C */	bne lbl_80C80294
/* 80C8014C  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C80150  38 63 1D 24 */	addi r3, r3, l_arcName@l
/* 80C80154  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80158  38 80 00 1B */	li r4, 0x1b
/* 80C8015C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C80160  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C80164  3F A5 00 02 */	addis r29, r5, 2
/* 80C80168  3B BD C2 F8 */	addi r29, r29, -15624
/* 80C8016C  7F A5 EB 78 */	mr r5, r29
/* 80C80170  38 C0 00 80 */	li r6, 0x80
/* 80C80174  4B 3B C1 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C80178  7C 65 1B 78 */	mr r5, r3
/* 80C8017C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80C80180  80 83 00 04 */	lwz r4, 4(r3)
/* 80C80184  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80C80188  38 84 00 58 */	addi r4, r4, 0x58
/* 80C8018C  38 C0 00 01 */	li r6, 1
/* 80C80190  38 E0 00 00 */	li r7, 0
/* 80C80194  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80C80198  39 00 00 00 */	li r8, 0
/* 80C8019C  39 20 FF FF */	li r9, -1
/* 80C801A0  4B 38 D4 9C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C801A4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C801A8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80C801AC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C801B0  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C801B4  38 63 1D 24 */	addi r3, r3, l_arcName@l
/* 80C801B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C801BC  38 80 00 15 */	li r4, 0x15
/* 80C801C0  7F A5 EB 78 */	mr r5, r29
/* 80C801C4  38 C0 00 80 */	li r6, 0x80
/* 80C801C8  4B 3B C1 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C801CC  7C 65 1B 78 */	mr r5, r3
/* 80C801D0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C801D4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C801D8  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C801DC  38 84 00 58 */	addi r4, r4, 0x58
/* 80C801E0  38 C0 00 01 */	li r6, 1
/* 80C801E4  38 E0 00 02 */	li r7, 2
/* 80C801E8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C801EC  39 00 00 00 */	li r8, 0
/* 80C801F0  39 20 FF FF */	li r9, -1
/* 80C801F4  4B 38 D5 18 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C801F8  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C801FC  38 63 1D 24 */	addi r3, r3, l_arcName@l
/* 80C80200  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80204  38 80 00 09 */	li r4, 9
/* 80C80208  7F A5 EB 78 */	mr r5, r29
/* 80C8020C  38 C0 00 80 */	li r6, 0x80
/* 80C80210  4B 3B C0 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C80214  7C 64 1B 78 */	mr r4, r3
/* 80C80218  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80C8021C  38 A0 00 01 */	li r5, 1
/* 80C80220  38 C0 00 00 */	li r6, 0
/* 80C80224  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C80228  38 E0 00 00 */	li r7, 0
/* 80C8022C  39 00 FF FF */	li r8, -1
/* 80C80230  39 20 00 01 */	li r9, 1
/* 80C80234  4B 38 D5 A8 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C80238  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C8023C  7C 03 07 74 */	extsb r3, r0
/* 80C80240  4B 3A CE 2C */	b dComIfGp_getReverb__Fi
/* 80C80244  7C 67 1B 78 */	mr r7, r3
/* 80C80248  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701DC@ha */
/* 80C8024C  38 03 01 DC */	addi r0, r3, 0x01DC /* 0x000701DC@l */
/* 80C80250  90 01 00 08 */	stw r0, 8(r1)
/* 80C80254  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C80258  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8025C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80260  38 81 00 08 */	addi r4, r1, 8
/* 80C80264  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C80268  38 C0 00 00 */	li r6, 0
/* 80C8026C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C80270  FC 40 08 90 */	fmr f2, f1
/* 80C80274  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80C80278  FC 80 18 90 */	fmr f4, f3
/* 80C8027C  39 00 00 00 */	li r8, 0
/* 80C80280  4B 62 B7 04 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C80284  38 00 00 14 */	li r0, 0x14
/* 80C80288  B0 1F 0A 30 */	sth r0, 0xa30(r31)
/* 80C8028C  7F E3 FB 78 */	mr r3, r31
/* 80C80290  48 00 00 1D */	bl initActionWarning__12daObjLv6Bm_cFv
lbl_80C80294:
/* 80C80294  39 61 00 30 */	addi r11, r1, 0x30
/* 80C80298  4B 6E 1F 90 */	b _restgpr_29
/* 80C8029C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C802A0  7C 08 03 A6 */	mtlr r0
/* 80C802A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C802A8  4E 80 00 20 */	blr 
