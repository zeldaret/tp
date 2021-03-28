lbl_80D40844:
/* 80D40844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D40848  7C 08 02 A6 */	mflr r0
/* 80D4084C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D40850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D40854  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D40858  7C 7E 1B 78 */	mr r30, r3
/* 80D4085C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D40860  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D40864  40 82 00 B4 */	bne lbl_80D40918
/* 80D40868  7F C0 F3 79 */	or. r0, r30, r30
/* 80D4086C  41 82 00 A0 */	beq lbl_80D4090C
/* 80D40870  7C 1F 03 78 */	mr r31, r0
/* 80D40874  4B 33 7D B0 */	b __ct__16dBgS_MoveBgActorFv
/* 80D40878  3C 60 80 D4 */	lis r3, __vt__12daZrTurara_c@ha
/* 80D4087C  38 03 17 34 */	addi r0, r3, __vt__12daZrTurara_c@l
/* 80D40880  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80D40884  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D40888  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D4088C  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80D40890  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80D40894  4B 34 2E CC */	b __ct__10dCcD_GSttsFv
/* 80D40898  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D4089C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D408A0  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 80D408A4  38 03 00 20 */	addi r0, r3, 0x20
/* 80D408A8  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80D408AC  3B FF 05 DC */	addi r31, r31, 0x5dc
/* 80D408B0  7F E3 FB 78 */	mr r3, r31
/* 80D408B4  4B 34 31 74 */	b __ct__12dCcD_GObjInfFv
/* 80D408B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D408BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D408C0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D408C4  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha
/* 80D408C8  38 03 17 28 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D408CC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80D408D0  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D408D4  38 03 17 1C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D408D8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D408DC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D408E0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D408E4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80D408E8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D408EC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D408F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D408F4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D408F8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80D408FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D40900  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D40904  38 03 00 84 */	addi r0, r3, 0x84
/* 80D40908  90 1F 01 38 */	stw r0, 0x138(r31)
lbl_80D4090C:
/* 80D4090C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D40910  60 00 00 08 */	ori r0, r0, 8
/* 80D40914  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D40918:
/* 80D40918  38 7E 07 18 */	addi r3, r30, 0x718
/* 80D4091C  3C 80 80 D4 */	lis r4, stringBase0@ha
/* 80D40920  38 84 15 FC */	addi r4, r4, stringBase0@l
/* 80D40924  4B 2E C5 98 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D40928  7C 7F 1B 78 */	mr r31, r3
/* 80D4092C  2C 1F 00 04 */	cmpwi r31, 4
/* 80D40930  40 82 01 D0 */	bne lbl_80D40B00
/* 80D40934  7F C3 F3 78 */	mr r3, r30
/* 80D40938  3C 80 80 D4 */	lis r4, stringBase0@ha
/* 80D4093C  38 84 15 FC */	addi r4, r4, stringBase0@l
/* 80D40940  38 A0 00 09 */	li r5, 9
/* 80D40944  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D40948  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D4094C  38 E0 28 00 */	li r7, 0x2800
/* 80D40950  39 00 00 00 */	li r8, 0
/* 80D40954  4B 33 7E 68 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D40958  2C 03 00 05 */	cmpwi r3, 5
/* 80D4095C  40 82 00 0C */	bne lbl_80D40968
/* 80D40960  38 60 00 05 */	li r3, 5
/* 80D40964  48 00 01 A0 */	b lbl_80D40B04
lbl_80D40968:
/* 80D40968  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D4096C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D40970  98 1E 07 29 */	stb r0, 0x729(r30)
/* 80D40974  38 00 00 01 */	li r0, 1
/* 80D40978  98 1E 07 2A */	stb r0, 0x72a(r30)
/* 80D4097C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80D40980  38 80 00 FF */	li r4, 0xff
/* 80D40984  38 A0 00 FF */	li r5, 0xff
/* 80D40988  7F C6 F3 78 */	mr r6, r30
/* 80D4098C  4B 34 2E D4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D40990  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80D40994  3C 80 80 D4 */	lis r4, mCcDCyl__12daZrTurara_c@ha
/* 80D40998  38 84 16 28 */	addi r4, r4, mCcDCyl__12daZrTurara_c@l
/* 80D4099C  4B 34 3F 18 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D409A0  38 1E 05 A0 */	addi r0, r30, 0x5a0
/* 80D409A4  90 1E 06 20 */	stw r0, 0x620(r30)
/* 80D409A8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D409AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D409B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D409B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D409B8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D409BC  7C 05 07 74 */	extsb r5, r0
/* 80D409C0  4B 2F 49 A0 */	b isSwitch__10dSv_info_cCFii
/* 80D409C4  2C 03 00 00 */	cmpwi r3, 0
/* 80D409C8  41 82 00 48 */	beq lbl_80D40A10
/* 80D409CC  80 9E 07 2C */	lwz r4, 0x72c(r30)
/* 80D409D0  28 04 00 00 */	cmplwi r4, 0
/* 80D409D4  41 82 00 1C */	beq lbl_80D409F0
/* 80D409D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D409DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D409E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D409E4  4B 33 38 6C */	b Release__4cBgSFP9dBgW_Base
/* 80D409E8  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80D409EC  4B 33 AF D4 */	b Move__4dBgWFv
lbl_80D409F0:
/* 80D409F0  80 1E 05 F4 */	lwz r0, 0x5f4(r30)
/* 80D409F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D409F8  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80D409FC  38 00 00 00 */	li r0, 0
/* 80D40A00  98 1E 07 2A */	stb r0, 0x72a(r30)
/* 80D40A04  7F C3 F3 78 */	mr r3, r30
/* 80D40A08  48 00 08 99 */	bl init_modeEnd__12daZrTurara_cFv
/* 80D40A0C  48 00 00 2C */	b lbl_80D40A38
lbl_80D40A10:
/* 80D40A10  80 9E 07 2C */	lwz r4, 0x72c(r30)
/* 80D40A14  28 04 00 00 */	cmplwi r4, 0
/* 80D40A18  41 82 00 20 */	beq lbl_80D40A38
/* 80D40A1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D40A20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D40A24  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D40A28  7F C5 F3 78 */	mr r5, r30
/* 80D40A2C  4B 33 3F DC */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D40A30  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80D40A34  4B 33 AF 8C */	b Move__4dBgWFv
lbl_80D40A38:
/* 80D40A38  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80D40A3C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D40A40  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D40A44  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80D40A48  80 63 00 04 */	lwz r3, 4(r3)
/* 80D40A4C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D40A50  80 83 00 00 */	lwz r4, 0(r3)
/* 80D40A54  80 7E 07 24 */	lwz r3, 0x724(r30)
/* 80D40A58  80 63 00 04 */	lwz r3, 4(r3)
/* 80D40A5C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D40A60  80 A3 00 00 */	lwz r5, 0(r3)
/* 80D40A64  C0 DE 04 F4 */	lfs f6, 0x4f4(r30)
/* 80D40A68  C0 BE 04 F0 */	lfs f5, 0x4f0(r30)
/* 80D40A6C  C0 9E 04 EC */	lfs f4, 0x4ec(r30)
/* 80D40A70  7F C3 F3 78 */	mr r3, r30
/* 80D40A74  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 80D40A78  EC 24 00 32 */	fmuls f1, f4, f0
/* 80D40A7C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80D40A80  EC 45 00 32 */	fmuls f2, f5, f0
/* 80D40A84  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 80D40A88  EC 66 00 32 */	fmuls f3, f6, f0
/* 80D40A8C  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80D40A90  EC 84 00 32 */	fmuls f4, f4, f0
/* 80D40A94  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 80D40A98  EC A5 00 32 */	fmuls f5, f5, f0
/* 80D40A9C  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80D40AA0  EC C6 00 32 */	fmuls f6, f6, f0
/* 80D40AA4  4B 2D 9A A4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D40AA8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D40AAC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D40AB0  28 00 00 FF */	cmplwi r0, 0xff
/* 80D40AB4  40 82 00 08 */	bne lbl_80D40ABC
/* 80D40AB8  38 00 00 00 */	li r0, 0
lbl_80D40ABC:
/* 80D40ABC  3C 60 80 D4 */	lis r3, lit_3699@ha
/* 80D40AC0  C0 63 15 D0 */	lfs f3, lit_3699@l(r3)
/* 80D40AC4  3C 60 80 D4 */	lis r3, lit_3831@ha
/* 80D40AC8  C0 43 15 D4 */	lfs f2, lit_3831@l(r3)
/* 80D40ACC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D40AD0  3C 60 80 D4 */	lis r3, lit_3833@ha
/* 80D40AD4  C8 23 15 DC */	lfd f1, lit_3833@l(r3)
/* 80D40AD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D40ADC  3C 00 43 30 */	lis r0, 0x4330
/* 80D40AE0  90 01 00 08 */	stw r0, 8(r1)
/* 80D40AE4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D40AE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D40AEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D40AF0  EC 03 00 2A */	fadds f0, f3, f0
/* 80D40AF4  D0 1E 07 60 */	stfs f0, 0x760(r30)
/* 80D40AF8  7F C3 F3 78 */	mr r3, r30
/* 80D40AFC  4B FF FA E9 */	bl setBaseMtx__12daZrTurara_cFv
lbl_80D40B00:
/* 80D40B00  7F E3 FB 78 */	mr r3, r31
lbl_80D40B04:
/* 80D40B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D40B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D40B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D40B10  7C 08 03 A6 */	mtlr r0
/* 80D40B14  38 21 00 20 */	addi r1, r1, 0x20
/* 80D40B18  4E 80 00 20 */	blr 
