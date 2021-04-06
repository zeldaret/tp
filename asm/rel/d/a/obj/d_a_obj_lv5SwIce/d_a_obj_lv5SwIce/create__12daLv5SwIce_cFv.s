lbl_80C6CB14:
/* 80C6CB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6CB18  7C 08 02 A6 */	mflr r0
/* 80C6CB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6CB20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6CB24  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6CB28  7C 7F 1B 78 */	mr r31, r3
/* 80C6CB2C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C6CB30  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C6CB34  40 82 00 B4 */	bne lbl_80C6CBE8
/* 80C6CB38  7F E0 FB 79 */	or. r0, r31, r31
/* 80C6CB3C  41 82 00 A0 */	beq lbl_80C6CBDC
/* 80C6CB40  7C 1E 03 78 */	mr r30, r0
/* 80C6CB44  4B 40 BA E1 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C6CB48  3C 60 80 C7 */	lis r3, __vt__12daLv5SwIce_c@ha /* 0x80C6D674@ha */
/* 80C6CB4C  38 03 D6 74 */	addi r0, r3, __vt__12daLv5SwIce_c@l /* 0x80C6D674@l */
/* 80C6CB50  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C6CB54  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C6CB58  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C6CB5C  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80C6CB60  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C6CB64  4B 41 6B FD */	bl __ct__10dCcD_GSttsFv
/* 80C6CB68  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C6CB6C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C6CB70  90 7E 05 B8 */	stw r3, 0x5b8(r30)
/* 80C6CB74  38 03 00 20 */	addi r0, r3, 0x20
/* 80C6CB78  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80C6CB7C  3B DE 05 DC */	addi r30, r30, 0x5dc
/* 80C6CB80  7F C3 F3 78 */	mr r3, r30
/* 80C6CB84  4B 41 6E A5 */	bl __ct__12dCcD_GObjInfFv
/* 80C6CB88  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C6CB8C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C6CB90  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6CB94  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C6D668@ha */
/* 80C6CB98  38 03 D6 68 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C6D668@l */
/* 80C6CB9C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C6CBA0  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C6D65C@ha */
/* 80C6CBA4  38 03 D6 5C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C6D65C@l */
/* 80C6CBA8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6CBAC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C6CBB0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C6CBB4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C6CBB8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C6CBBC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6CBC0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C6CBC4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C6CBC8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C6CBCC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C6CBD0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6CBD4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C6CBD8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C6CBDC:
/* 80C6CBDC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C6CBE0  60 00 00 08 */	ori r0, r0, 8
/* 80C6CBE4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C6CBE8:
/* 80C6CBE8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6CBEC  98 1F 07 26 */	stb r0, 0x726(r31)
/* 80C6CBF0  88 9F 07 26 */	lbz r4, 0x726(r31)
/* 80C6CBF4  28 04 00 FF */	cmplwi r4, 0xff
/* 80C6CBF8  41 82 00 28 */	beq lbl_80C6CC20
/* 80C6CBFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6CC00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6CC04  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6CC08  7C 05 07 74 */	extsb r5, r0
/* 80C6CC0C  4B 3C 87 55 */	bl isSwitch__10dSv_info_cCFii
/* 80C6CC10  2C 03 00 00 */	cmpwi r3, 0
/* 80C6CC14  41 82 00 0C */	beq lbl_80C6CC20
/* 80C6CC18  38 60 00 05 */	li r3, 5
/* 80C6CC1C  48 00 00 B0 */	b lbl_80C6CCCC
lbl_80C6CC20:
/* 80C6CC20  38 7F 07 18 */	addi r3, r31, 0x718
/* 80C6CC24  3C 80 80 C7 */	lis r4, d_a_obj_lv5SwIce__stringBase0@ha /* 0x80C6D558@ha */
/* 80C6CC28  38 84 D5 58 */	addi r4, r4, d_a_obj_lv5SwIce__stringBase0@l /* 0x80C6D558@l */
/* 80C6CC2C  4B 3C 02 91 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C6CC30  7C 7E 1B 78 */	mr r30, r3
/* 80C6CC34  2C 1E 00 04 */	cmpwi r30, 4
/* 80C6CC38  40 82 00 90 */	bne lbl_80C6CCC8
/* 80C6CC3C  7F E3 FB 78 */	mr r3, r31
/* 80C6CC40  3C 80 80 C7 */	lis r4, d_a_obj_lv5SwIce__stringBase0@ha /* 0x80C6D558@ha */
/* 80C6CC44  38 84 D5 58 */	addi r4, r4, d_a_obj_lv5SwIce__stringBase0@l /* 0x80C6D558@l */
/* 80C6CC48  38 A0 00 07 */	li r5, 7
/* 80C6CC4C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C6CC50  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C6CC54  38 E0 14 B0 */	li r7, 0x14b0
/* 80C6CC58  39 00 00 00 */	li r8, 0
/* 80C6CC5C  4B 40 BB 61 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C6CC60  2C 03 00 05 */	cmpwi r3, 5
/* 80C6CC64  40 82 00 0C */	bne lbl_80C6CC70
/* 80C6CC68  38 60 00 05 */	li r3, 5
/* 80C6CC6C  48 00 00 60 */	b lbl_80C6CCCC
lbl_80C6CC70:
/* 80C6CC70  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80C6CC74  38 03 00 24 */	addi r0, r3, 0x24
/* 80C6CC78  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C6CC7C  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80C6CC80  80 83 00 04 */	lwz r4, 4(r3)
/* 80C6CC84  7F E3 FB 78 */	mr r3, r31
/* 80C6CC88  4B 3A D8 F1 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C6CC8C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C6CC90  38 80 00 FF */	li r4, 0xff
/* 80C6CC94  38 A0 00 FF */	li r5, 0xff
/* 80C6CC98  7F E6 FB 78 */	mr r6, r31
/* 80C6CC9C  4B 41 6B C5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C6CCA0  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80C6CCA4  3C 80 80 C7 */	lis r4, mCcDCyl__12daLv5SwIce_c@ha /* 0x80C6D580@ha */
/* 80C6CCA8  38 84 D5 80 */	addi r4, r4, mCcDCyl__12daLv5SwIce_c@l /* 0x80C6D580@l */
/* 80C6CCAC  4B 41 7C 09 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C6CCB0  38 1F 05 A0 */	addi r0, r31, 0x5a0
/* 80C6CCB4  90 1F 06 20 */	stw r0, 0x620(r31)
/* 80C6CCB8  7F E3 FB 78 */	mr r3, r31
/* 80C6CCBC  48 00 01 F9 */	bl init_modeWait__12daLv5SwIce_cFv
/* 80C6CCC0  7F E3 FB 78 */	mr r3, r31
/* 80C6CCC4  4B FF FD 5D */	bl setBaseMtx__12daLv5SwIce_cFv
lbl_80C6CCC8:
/* 80C6CCC8  7F C3 F3 78 */	mr r3, r30
lbl_80C6CCCC:
/* 80C6CCCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6CCD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6CCD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CCD8  7C 08 03 A6 */	mtlr r0
/* 80C6CCDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CCE0  4E 80 00 20 */	blr 
