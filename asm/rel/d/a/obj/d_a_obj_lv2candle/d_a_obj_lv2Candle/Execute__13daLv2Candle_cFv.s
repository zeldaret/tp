lbl_8058E99C:
/* 8058E99C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058E9A0  7C 08 02 A6 */	mflr r0
/* 8058E9A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058E9A8  39 61 00 30 */	addi r11, r1, 0x30
/* 8058E9AC  4B DD 38 30 */	b _savegpr_29
/* 8058E9B0  7C 7F 1B 78 */	mr r31, r3
/* 8058E9B4  3C 80 80 59 */	lis r4, lit_3637@ha
/* 8058E9B8  3B C4 F1 30 */	addi r30, r4, lit_3637@l
/* 8058E9BC  88 03 06 F8 */	lbz r0, 0x6f8(r3)
/* 8058E9C0  28 00 00 FF */	cmplwi r0, 0xff
/* 8058E9C4  40 82 00 38 */	bne lbl_8058E9FC
/* 8058E9C8  88 9F 06 FB */	lbz r4, 0x6fb(r31)
/* 8058E9CC  28 04 00 00 */	cmplwi r4, 0
/* 8058E9D0  41 82 00 84 */	beq lbl_8058EA54
/* 8058E9D4  38 04 FF FF */	addi r0, r4, -1
/* 8058E9D8  98 1F 06 FB */	stb r0, 0x6fb(r31)
/* 8058E9DC  88 1F 06 FB */	lbz r0, 0x6fb(r31)
/* 8058E9E0  28 00 00 00 */	cmplwi r0, 0
/* 8058E9E4  40 82 00 70 */	bne lbl_8058EA54
/* 8058E9E8  38 00 00 01 */	li r0, 1
/* 8058E9EC  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 8058E9F0  98 1F 06 25 */	stb r0, 0x625(r31)
/* 8058E9F4  4B FF FD 2D */	bl setLight__13daLv2Candle_cFv
/* 8058E9F8  48 00 00 5C */	b lbl_8058EA54
lbl_8058E9FC:
/* 8058E9FC  4B FF FB C1 */	bl isSwitch__13daLv2Candle_cFv
/* 8058EA00  98 7F 06 FA */	stb r3, 0x6fa(r31)
/* 8058EA04  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 8058EA08  28 00 00 00 */	cmplwi r0, 0
/* 8058EA0C  41 82 00 28 */	beq lbl_8058EA34
/* 8058EA10  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 8058EA14  28 00 00 00 */	cmplwi r0, 0
/* 8058EA18  40 82 00 3C */	bne lbl_8058EA54
/* 8058EA1C  38 00 00 01 */	li r0, 1
/* 8058EA20  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 8058EA24  98 1F 06 25 */	stb r0, 0x625(r31)
/* 8058EA28  7F E3 FB 78 */	mr r3, r31
/* 8058EA2C  4B FF FC F5 */	bl setLight__13daLv2Candle_cFv
/* 8058EA30  48 00 00 24 */	b lbl_8058EA54
lbl_8058EA34:
/* 8058EA34  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 8058EA38  28 00 00 01 */	cmplwi r0, 1
/* 8058EA3C  40 82 00 18 */	bne lbl_8058EA54
/* 8058EA40  38 00 00 00 */	li r0, 0
/* 8058EA44  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 8058EA48  98 1F 06 25 */	stb r0, 0x625(r31)
/* 8058EA4C  7F E3 FB 78 */	mr r3, r31
/* 8058EA50  4B FF FD 01 */	bl cutLight__13daLv2Candle_cFv
lbl_8058EA54:
/* 8058EA54  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 8058EA58  28 00 00 00 */	cmplwi r0, 0
/* 8058EA5C  41 82 00 DC */	beq lbl_8058EB38
/* 8058EA60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058EA64  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8058EA68  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8058EA6C  38 80 01 00 */	li r4, 0x100
/* 8058EA70  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 8058EA74  38 C0 00 00 */	li r6, 0
/* 8058EA78  38 E0 00 FF */	li r7, 0xff
/* 8058EA7C  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 8058EA80  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 8058EA84  7D 09 43 78 */	mr r9, r8
/* 8058EA88  39 40 00 00 */	li r10, 0
/* 8058EA8C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8058EA90  4B AB E7 28 */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 8058EA94  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8058EA98  38 80 01 01 */	li r4, 0x101
/* 8058EA9C  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 8058EAA0  38 C0 00 00 */	li r6, 0
/* 8058EAA4  38 E0 00 FF */	li r7, 0xff
/* 8058EAA8  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 8058EAAC  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 8058EAB0  7D 09 43 78 */	mr r9, r8
/* 8058EAB4  39 40 00 00 */	li r10, 0
/* 8058EAB8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8058EABC  4B AB E6 FC */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 8058EAC0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8058EAC4  38 80 01 03 */	li r4, 0x103
/* 8058EAC8  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 8058EACC  38 C0 00 00 */	li r6, 0
/* 8058EAD0  38 E0 00 FF */	li r7, 0xff
/* 8058EAD4  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 8058EAD8  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 8058EADC  7D 09 43 78 */	mr r9, r8
/* 8058EAE0  39 40 00 00 */	li r10, 0
/* 8058EAE4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8058EAE8  4B AB E6 D0 */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 8058EAEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8058EAF0  7C 03 07 74 */	extsb r3, r0
/* 8058EAF4  4B A9 E5 78 */	b dComIfGp_getReverb__Fi
/* 8058EAF8  7C 67 1B 78 */	mr r7, r3
/* 8058EAFC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 8058EB00  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 8058EB04  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058EB08  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058EB0C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058EB10  80 63 00 00 */	lwz r3, 0(r3)
/* 8058EB14  38 81 00 10 */	addi r4, r1, 0x10
/* 8058EB18  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 8058EB1C  38 C0 00 00 */	li r6, 0
/* 8058EB20  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8058EB24  FC 40 08 90 */	fmr f2, f1
/* 8058EB28  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 8058EB2C  FC 80 18 90 */	fmr f4, f3
/* 8058EB30  39 00 00 00 */	li r8, 0
/* 8058EB34  4B D1 D9 D8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8058EB38:
/* 8058EB38  80 BF 07 34 */	lwz r5, 0x734(r31)
/* 8058EB3C  28 05 00 00 */	cmplwi r5, 0
/* 8058EB40  41 82 00 58 */	beq lbl_8058EB98
/* 8058EB44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058EB48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058EB4C  88 85 05 87 */	lbz r4, 0x587(r5)
/* 8058EB50  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 8058EB54  7C 05 07 74 */	extsb r5, r0
/* 8058EB58  4B AA 68 08 */	b isSwitch__10dSv_info_cCFii
/* 8058EB5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058EB60  41 82 00 20 */	beq lbl_8058EB80
/* 8058EB64  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 8058EB68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8058EB6C  41 82 00 2C */	beq lbl_8058EB98
/* 8058EB70  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 8058EB74  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8058EB78  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 8058EB7C  48 00 00 1C */	b lbl_8058EB98
lbl_8058EB80:
/* 8058EB80  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 8058EB84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8058EB88  40 82 00 10 */	bne lbl_8058EB98
/* 8058EB8C  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 8058EB90  60 00 00 01 */	ori r0, r0, 1
/* 8058EB94  90 1F 05 C8 */	stw r0, 0x5c8(r31)
lbl_8058EB98:
/* 8058EB98  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 8058EB9C  4B AF 58 C4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8058EBA0  28 03 00 00 */	cmplwi r3, 0
/* 8058EBA4  41 82 02 90 */	beq lbl_8058EE34
/* 8058EBA8  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 8058EBAC  4B AF 59 9C */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 8058EBB0  7C 7D 1B 78 */	mr r29, r3
/* 8058EBB4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8058EBB8  28 00 02 00 */	cmplwi r0, 0x200
/* 8058EBBC  40 82 00 BC */	bne lbl_8058EC78
/* 8058EBC0  88 1D 00 75 */	lbz r0, 0x75(r29)
/* 8058EBC4  28 00 00 01 */	cmplwi r0, 1
/* 8058EBC8  40 82 00 B0 */	bne lbl_8058EC78
/* 8058EBCC  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 8058EBD0  28 00 00 00 */	cmplwi r0, 0
/* 8058EBD4  40 82 00 A4 */	bne lbl_8058EC78
/* 8058EBD8  38 00 00 01 */	li r0, 1
/* 8058EBDC  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 8058EBE0  98 1F 06 25 */	stb r0, 0x625(r31)
/* 8058EBE4  88 1F 06 FC */	lbz r0, 0x6fc(r31)
/* 8058EBE8  28 00 00 00 */	cmplwi r0, 0
/* 8058EBEC  40 82 00 20 */	bne lbl_8058EC0C
/* 8058EBF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058EBF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058EBF8  88 9F 06 F8 */	lbz r4, 0x6f8(r31)
/* 8058EBFC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058EC00  7C 05 07 74 */	extsb r5, r0
/* 8058EC04  4B AA 65 FC */	b onSwitch__10dSv_info_cFii
/* 8058EC08  48 00 00 1C */	b lbl_8058EC24
lbl_8058EC0C:
/* 8058EC0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058EC10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058EC14  88 9F 06 F8 */	lbz r4, 0x6f8(r31)
/* 8058EC18  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058EC1C  7C 05 07 74 */	extsb r5, r0
/* 8058EC20  4B AA 66 90 */	b offSwitch__10dSv_info_cFii
lbl_8058EC24:
/* 8058EC24  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8058EC28  7C 03 07 74 */	extsb r3, r0
/* 8058EC2C  4B A9 E4 40 */	b dComIfGp_getReverb__Fi
/* 8058EC30  7C 67 1B 78 */	mr r7, r3
/* 8058EC34  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 8058EC38  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 8058EC3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058EC40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058EC44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058EC48  80 63 00 00 */	lwz r3, 0(r3)
/* 8058EC4C  38 81 00 0C */	addi r4, r1, 0xc
/* 8058EC50  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 8058EC54  38 C0 00 00 */	li r6, 0
/* 8058EC58  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8058EC5C  FC 40 08 90 */	fmr f2, f1
/* 8058EC60  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 8058EC64  FC 80 18 90 */	fmr f4, f3
/* 8058EC68  39 00 00 00 */	li r8, 0
/* 8058EC6C  4B D1 CD 18 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8058EC70  7F E3 FB 78 */	mr r3, r31
/* 8058EC74  4B FF FA AD */	bl setLight__13daLv2Candle_cFv
lbl_8058EC78:
/* 8058EC78  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8058EC7C  3C 03 FF FF */	addis r0, r3, 0xffff
/* 8058EC80  28 00 00 00 */	cmplwi r0, 0
/* 8058EC84  40 82 00 E4 */	bne lbl_8058ED68
/* 8058EC88  88 1D 00 75 */	lbz r0, 0x75(r29)
/* 8058EC8C  28 00 00 03 */	cmplwi r0, 3
/* 8058EC90  40 82 00 D8 */	bne lbl_8058ED68
/* 8058EC94  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 8058EC98  28 00 00 01 */	cmplwi r0, 1
/* 8058EC9C  40 82 00 CC */	bne lbl_8058ED68
/* 8058ECA0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058ECA4  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 8058ECA8  2C 00 00 01 */	cmpwi r0, 1
/* 8058ECAC  40 82 00 BC */	bne lbl_8058ED68
/* 8058ECB0  38 00 00 00 */	li r0, 0
/* 8058ECB4  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 8058ECB8  98 1F 06 25 */	stb r0, 0x625(r31)
/* 8058ECBC  7F E3 FB 78 */	mr r3, r31
/* 8058ECC0  4B FF FA 91 */	bl cutLight__13daLv2Candle_cFv
/* 8058ECC4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8058ECC8  7C 03 07 74 */	extsb r3, r0
/* 8058ECCC  4B A9 E3 A0 */	b dComIfGp_getReverb__Fi
/* 8058ECD0  7C 67 1B 78 */	mr r7, r3
/* 8058ECD4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 8058ECD8  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 8058ECDC  90 01 00 08 */	stw r0, 8(r1)
/* 8058ECE0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058ECE4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058ECE8  80 63 00 00 */	lwz r3, 0(r3)
/* 8058ECEC  38 81 00 08 */	addi r4, r1, 8
/* 8058ECF0  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 8058ECF4  38 C0 00 00 */	li r6, 0
/* 8058ECF8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8058ECFC  FC 40 08 90 */	fmr f2, f1
/* 8058ED00  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 8058ED04  FC 80 18 90 */	fmr f4, f3
/* 8058ED08  39 00 00 00 */	li r8, 0
/* 8058ED0C  4B D1 CC 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8058ED10  88 9F 06 F8 */	lbz r4, 0x6f8(r31)
/* 8058ED14  28 04 00 FF */	cmplwi r4, 0xff
/* 8058ED18  40 82 00 18 */	bne lbl_8058ED30
/* 8058ED1C  3C 60 80 59 */	lis r3, l_HIO@ha
/* 8058ED20  38 63 F2 AC */	addi r3, r3, l_HIO@l
/* 8058ED24  88 03 00 04 */	lbz r0, 4(r3)
/* 8058ED28  98 1F 06 FB */	stb r0, 0x6fb(r31)
/* 8058ED2C  48 00 00 3C */	b lbl_8058ED68
lbl_8058ED30:
/* 8058ED30  88 1F 06 FC */	lbz r0, 0x6fc(r31)
/* 8058ED34  28 00 00 00 */	cmplwi r0, 0
/* 8058ED38  40 82 00 1C */	bne lbl_8058ED54
/* 8058ED3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058ED40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058ED44  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058ED48  7C 05 07 74 */	extsb r5, r0
/* 8058ED4C  4B AA 65 64 */	b offSwitch__10dSv_info_cFii
/* 8058ED50  48 00 00 18 */	b lbl_8058ED68
lbl_8058ED54:
/* 8058ED54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058ED58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058ED5C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058ED60  7C 05 07 74 */	extsb r5, r0
/* 8058ED64  4B AA 64 9C */	b onSwitch__10dSv_info_cFii
lbl_8058ED68:
/* 8058ED68  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 8058ED6C  4B AF 57 8C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8058ED70  28 03 00 00 */	cmplwi r3, 0
/* 8058ED74  41 82 00 C8 */	beq lbl_8058EE3C
/* 8058ED78  4B CD 4C D0 */	b GetAc__8cCcD_ObjFv
/* 8058ED7C  3B A0 00 01 */	li r29, 1
/* 8058ED80  28 03 00 00 */	cmplwi r3, 0
/* 8058ED84  41 82 00 B8 */	beq lbl_8058EE3C
/* 8058ED88  A8 63 00 08 */	lha r3, 8(r3)
/* 8058ED8C  2C 03 01 E1 */	cmpwi r3, 0x1e1
/* 8058ED90  40 82 00 14 */	bne lbl_8058EDA4
/* 8058ED94  88 1F 07 38 */	lbz r0, 0x738(r31)
/* 8058ED98  28 00 00 00 */	cmplwi r0, 0
/* 8058ED9C  41 82 00 08 */	beq lbl_8058EDA4
/* 8058EDA0  3B A0 00 00 */	li r29, 0
lbl_8058EDA4:
/* 8058EDA4  2C 03 01 B2 */	cmpwi r3, 0x1b2
/* 8058EDA8  40 82 00 08 */	bne lbl_8058EDB0
/* 8058EDAC  3B A0 00 00 */	li r29, 0
lbl_8058EDB0:
/* 8058EDB0  2C 03 00 FD */	cmpwi r3, 0xfd
/* 8058EDB4  40 82 00 28 */	bne lbl_8058EDDC
/* 8058EDB8  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 8058EDBC  4B AF 57 8C */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 8058EDC0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8058EDC4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8058EDC8  41 82 00 14 */	beq lbl_8058EDDC
/* 8058EDCC  88 1F 07 38 */	lbz r0, 0x738(r31)
/* 8058EDD0  28 00 00 00 */	cmplwi r0, 0
/* 8058EDD4  41 82 00 08 */	beq lbl_8058EDDC
/* 8058EDD8  3B A0 00 00 */	li r29, 0
lbl_8058EDDC:
/* 8058EDDC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8058EDE0  41 82 00 5C */	beq lbl_8058EE3C
/* 8058EDE4  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 8058EDE8  4B AF 57 94 */	b GetTgHitObjSe__12dCcD_GObjInfFv
/* 8058EDEC  38 80 00 01 */	li r4, 1
/* 8058EDF0  4B AF 57 C0 */	b getHitSeID__12dCcD_GObjInfFUci
/* 8058EDF4  7C 64 1B 78 */	mr r4, r3
/* 8058EDF8  88 1F 06 FD */	lbz r0, 0x6fd(r31)
/* 8058EDFC  28 00 00 00 */	cmplwi r0, 0
/* 8058EE00  40 82 00 18 */	bne lbl_8058EE18
/* 8058EE04  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8058EE08  38 A0 00 02 */	li r5, 2
/* 8058EE0C  38 C0 00 00 */	li r6, 0
/* 8058EE10  4B D2 F6 94 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 8058EE14  48 00 00 14 */	b lbl_8058EE28
lbl_8058EE18:
/* 8058EE18  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8058EE1C  38 A0 00 09 */	li r5, 9
/* 8058EE20  38 C0 00 00 */	li r6, 0
/* 8058EE24  4B D2 F6 80 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_8058EE28:
/* 8058EE28  38 00 00 01 */	li r0, 1
/* 8058EE2C  98 1F 07 38 */	stb r0, 0x738(r31)
/* 8058EE30  48 00 00 0C */	b lbl_8058EE3C
lbl_8058EE34:
/* 8058EE34  38 00 00 00 */	li r0, 0
/* 8058EE38  98 1F 07 38 */	stb r0, 0x738(r31)
lbl_8058EE3C:
/* 8058EE3C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8058EE40  7C 03 07 74 */	extsb r3, r0
/* 8058EE44  4B A9 E2 28 */	b dComIfGp_getReverb__Fi
/* 8058EE48  7C 65 1B 78 */	mr r5, r3
/* 8058EE4C  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8058EE50  38 80 00 00 */	li r4, 0
/* 8058EE54  81 9F 07 4C */	lwz r12, 0x74c(r31)
/* 8058EE58  81 8C 00 08 */	lwz r12, 8(r12)
/* 8058EE5C  7D 89 03 A6 */	mtctr r12
/* 8058EE60  4E 80 04 21 */	bctrl 
/* 8058EE64  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 8058EE68  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8058EE6C  4B CE 03 94 */	b SetR__8cM3dGCylFf
/* 8058EE70  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 8058EE74  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8058EE78  4B CE 03 80 */	b SetH__8cM3dGCylFf
/* 8058EE7C  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 8058EE80  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8058EE84  4B CE 03 58 */	b SetC__8cM3dGCylFRC4cXyz
/* 8058EE88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058EE8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058EE90  38 63 23 3C */	addi r3, r3, 0x233c
/* 8058EE94  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 8058EE98  4B CD 5D 10 */	b Set__4cCcSFP8cCcD_Obj
/* 8058EE9C  7F E3 FB 78 */	mr r3, r31
/* 8058EEA0  4B FF F8 E1 */	bl pointLightProc__13daLv2Candle_cFv
/* 8058EEA4  7F E3 FB 78 */	mr r3, r31
/* 8058EEA8  4B FF F2 95 */	bl setBaseMtx__13daLv2Candle_cFv
/* 8058EEAC  38 60 00 01 */	li r3, 1
/* 8058EEB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8058EEB4  4B DD 33 74 */	b _restgpr_29
/* 8058EEB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058EEBC  7C 08 03 A6 */	mtlr r0
/* 8058EEC0  38 21 00 30 */	addi r1, r1, 0x30
/* 8058EEC4  4E 80 00 20 */	blr 
