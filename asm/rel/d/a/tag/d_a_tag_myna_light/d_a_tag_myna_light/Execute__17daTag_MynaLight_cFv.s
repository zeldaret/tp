lbl_80D5CBF4:
/* 80D5CBF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D5CBF8  7C 08 02 A6 */	mflr r0
/* 80D5CBFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D5CC00  39 61 00 30 */	addi r11, r1, 0x30
/* 80D5CC04  4B 60 55 D5 */	bl _savegpr_28
/* 80D5CC08  7C 7E 1B 78 */	mr r30, r3
/* 80D5CC0C  3C 80 80 D6 */	lis r4, lit_3694@ha /* 0x80D5D300@ha */
/* 80D5CC10  3B E4 D3 00 */	addi r31, r4, lit_3694@l /* 0x80D5D300@l */
/* 80D5CC14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5CC18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5CC1C  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 80D5CC20  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D5CC24  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D5CC28  FC 00 00 1E */	fctiwz f0, f0
/* 80D5CC2C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D5CC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5CC34  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80D5CC38  48 00 05 11 */	bl getTurnOnTime__17daTag_MynaLight_cFv
/* 80D5CC3C  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80D5CC40  7F C3 F3 78 */	mr r3, r30
/* 80D5CC44  48 00 05 11 */	bl getTurnOffTime__17daTag_MynaLight_cFv
/* 80D5CC48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D5CC4C  7C 00 E8 40 */	cmplw r0, r29
/* 80D5CC50  40 81 00 44 */	ble lbl_80D5CC94
/* 80D5CC54  7F C3 F3 78 */	mr r3, r30
/* 80D5CC58  48 00 04 F1 */	bl getTurnOnTime__17daTag_MynaLight_cFv
/* 80D5CC5C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D5CC60  7C 1C 00 40 */	cmplw r28, r0
/* 80D5CC64  41 80 00 24 */	blt lbl_80D5CC88
/* 80D5CC68  7F C3 F3 78 */	mr r3, r30
/* 80D5CC6C  48 00 04 E9 */	bl getTurnOffTime__17daTag_MynaLight_cFv
/* 80D5CC70  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D5CC74  7C 1C 00 40 */	cmplw r28, r0
/* 80D5CC78  40 80 00 10 */	bge lbl_80D5CC88
/* 80D5CC7C  38 00 00 01 */	li r0, 1
/* 80D5CC80  98 1E 05 78 */	stb r0, 0x578(r30)
/* 80D5CC84  48 00 00 4C */	b lbl_80D5CCD0
lbl_80D5CC88:
/* 80D5CC88  38 00 00 00 */	li r0, 0
/* 80D5CC8C  98 1E 05 78 */	stb r0, 0x578(r30)
/* 80D5CC90  48 00 00 40 */	b lbl_80D5CCD0
lbl_80D5CC94:
/* 80D5CC94  7F C3 F3 78 */	mr r3, r30
/* 80D5CC98  48 00 04 BD */	bl getTurnOffTime__17daTag_MynaLight_cFv
/* 80D5CC9C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D5CCA0  7C 1C 00 40 */	cmplw r28, r0
/* 80D5CCA4  41 80 00 24 */	blt lbl_80D5CCC8
/* 80D5CCA8  7F C3 F3 78 */	mr r3, r30
/* 80D5CCAC  48 00 04 9D */	bl getTurnOnTime__17daTag_MynaLight_cFv
/* 80D5CCB0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D5CCB4  7C 1C 00 40 */	cmplw r28, r0
/* 80D5CCB8  40 80 00 10 */	bge lbl_80D5CCC8
/* 80D5CCBC  38 00 00 00 */	li r0, 0
/* 80D5CCC0  98 1E 05 78 */	stb r0, 0x578(r30)
/* 80D5CCC4  48 00 00 0C */	b lbl_80D5CCD0
lbl_80D5CCC8:
/* 80D5CCC8  38 00 00 01 */	li r0, 1
/* 80D5CCCC  98 1E 05 78 */	stb r0, 0x578(r30)
lbl_80D5CCD0:
/* 80D5CCD0  88 1E 05 79 */	lbz r0, 0x579(r30)
/* 80D5CCD4  28 00 00 00 */	cmplwi r0, 0
/* 80D5CCD8  41 82 00 A0 */	beq lbl_80D5CD78
/* 80D5CCDC  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80D5CCE0  38 63 0D 64 */	addi r3, r3, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 80D5CCE4  88 63 00 00 */	lbz r3, 0(r3)
/* 80D5CCE8  7C 63 07 75 */	extsb. r3, r3
/* 80D5CCEC  41 82 00 4C */	beq lbl_80D5CD38
/* 80D5CCF0  4B 2D 03 7D */	bl dComIfGp_getReverb__Fi
/* 80D5CCF4  7C 67 1B 78 */	mr r7, r3
/* 80D5CCF8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011D@ha */
/* 80D5CCFC  38 03 01 1D */	addi r0, r3, 0x011D /* 0x0008011D@l */
/* 80D5CD00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5CD04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5CD08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5CD0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5CD10  38 81 00 0C */	addi r4, r1, 0xc
/* 80D5CD14  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D5CD18  38 C0 00 00 */	li r6, 0
/* 80D5CD1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5CD20  FC 40 08 90 */	fmr f2, f1
/* 80D5CD24  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80D5CD28  FC 80 18 90 */	fmr f4, f3
/* 80D5CD2C  39 00 00 00 */	li r8, 0
/* 80D5CD30  4B 54 F7 DD */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D5CD34  48 00 00 44 */	b lbl_80D5CD78
lbl_80D5CD38:
/* 80D5CD38  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011D@ha */
/* 80D5CD3C  38 03 01 1D */	addi r0, r3, 0x011D /* 0x0008011D@l */
/* 80D5CD40  90 01 00 08 */	stw r0, 8(r1)
/* 80D5CD44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5CD48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5CD4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5CD50  38 81 00 08 */	addi r4, r1, 8
/* 80D5CD54  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D5CD58  38 C0 00 00 */	li r6, 0
/* 80D5CD5C  38 E0 00 00 */	li r7, 0
/* 80D5CD60  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5CD64  FC 40 08 90 */	fmr f2, f1
/* 80D5CD68  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80D5CD6C  FC 80 18 90 */	fmr f4, f3
/* 80D5CD70  39 00 00 00 */	li r8, 0
/* 80D5CD74  4B 54 F7 99 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D5CD78:
/* 80D5CD78  38 60 00 01 */	li r3, 1
/* 80D5CD7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D5CD80  4B 60 54 A5 */	bl _restgpr_28
/* 80D5CD84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D5CD88  7C 08 03 A6 */	mtlr r0
/* 80D5CD8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D5CD90  4E 80 00 20 */	blr 
