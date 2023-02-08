lbl_80C6A7F0:
/* 80C6A7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A7F4  7C 08 02 A6 */	mflr r0
/* 80C6A7F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A7FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A800  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6A804  7C 7F 1B 78 */	mr r31, r3
/* 80C6A808  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C6A80C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C6A810  40 82 00 B4 */	bne lbl_80C6A8C4
/* 80C6A814  7F E0 FB 79 */	or. r0, r31, r31
/* 80C6A818  41 82 00 A0 */	beq lbl_80C6A8B8
/* 80C6A81C  7C 1E 03 78 */	mr r30, r0
/* 80C6A820  4B 40 DE 05 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C6A824  3C 60 80 C7 */	lis r3, __vt__12daFlorBoad_c@ha /* 0x80C6B2AC@ha */
/* 80C6A828  38 03 B2 AC */	addi r0, r3, __vt__12daFlorBoad_c@l /* 0x80C6B2AC@l */
/* 80C6A82C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C6A830  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C6A834  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C6A838  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80C6A83C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C6A840  4B 41 8F 21 */	bl __ct__10dCcD_GSttsFv
/* 80C6A844  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C6A848  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C6A84C  90 7E 05 B8 */	stw r3, 0x5b8(r30)
/* 80C6A850  38 03 00 20 */	addi r0, r3, 0x20
/* 80C6A854  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80C6A858  3B DE 05 DC */	addi r30, r30, 0x5dc
/* 80C6A85C  7F C3 F3 78 */	mr r3, r30
/* 80C6A860  4B 41 91 C9 */	bl __ct__12dCcD_GObjInfFv
/* 80C6A864  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C6A868  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C6A86C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6A870  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C6B2A0@ha */
/* 80C6A874  38 03 B2 A0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C6B2A0@l */
/* 80C6A878  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C6A87C  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C6B294@ha */
/* 80C6A880  38 03 B2 94 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C6B294@l */
/* 80C6A884  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6A888  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C6A88C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C6A890  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C6A894  38 03 00 58 */	addi r0, r3, 0x58
/* 80C6A898  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6A89C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C6A8A0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C6A8A4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C6A8A8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C6A8AC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6A8B0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C6A8B4  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C6A8B8:
/* 80C6A8B8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C6A8BC  60 00 00 08 */	ori r0, r0, 8
/* 80C6A8C0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C6A8C4:
/* 80C6A8C4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6A8C8  98 1F 07 26 */	stb r0, 0x726(r31)
/* 80C6A8CC  88 9F 07 26 */	lbz r4, 0x726(r31)
/* 80C6A8D0  28 04 00 FF */	cmplwi r4, 0xff
/* 80C6A8D4  41 82 00 28 */	beq lbl_80C6A8FC
/* 80C6A8D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6A8DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6A8E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6A8E4  7C 05 07 74 */	extsb r5, r0
/* 80C6A8E8  4B 3C AA 79 */	bl isSwitch__10dSv_info_cCFii
/* 80C6A8EC  2C 03 00 00 */	cmpwi r3, 0
/* 80C6A8F0  41 82 00 0C */	beq lbl_80C6A8FC
/* 80C6A8F4  38 60 00 05 */	li r3, 5
/* 80C6A8F8  48 00 00 B0 */	b lbl_80C6A9A8
lbl_80C6A8FC:
/* 80C6A8FC  38 7F 07 18 */	addi r3, r31, 0x718
/* 80C6A900  3C 80 80 C7 */	lis r4, d_a_obj_lv5FloorBoard__stringBase0@ha /* 0x80C6B18C@ha */
/* 80C6A904  38 84 B1 8C */	addi r4, r4, d_a_obj_lv5FloorBoard__stringBase0@l /* 0x80C6B18C@l */
/* 80C6A908  4B 3C 25 B5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C6A90C  7C 7E 1B 78 */	mr r30, r3
/* 80C6A910  2C 1E 00 04 */	cmpwi r30, 4
/* 80C6A914  40 82 00 90 */	bne lbl_80C6A9A4
/* 80C6A918  7F E3 FB 78 */	mr r3, r31
/* 80C6A91C  3C 80 80 C7 */	lis r4, d_a_obj_lv5FloorBoard__stringBase0@ha /* 0x80C6B18C@ha */
/* 80C6A920  38 84 B1 8C */	addi r4, r4, d_a_obj_lv5FloorBoard__stringBase0@l /* 0x80C6B18C@l */
/* 80C6A924  38 A0 00 07 */	li r5, 7
/* 80C6A928  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C6A92C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C6A930  38 E0 19 00 */	li r7, 0x1900
/* 80C6A934  39 00 00 00 */	li r8, 0
/* 80C6A938  4B 40 DE 85 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C6A93C  2C 03 00 05 */	cmpwi r3, 5
/* 80C6A940  40 82 00 0C */	bne lbl_80C6A94C
/* 80C6A944  38 60 00 05 */	li r3, 5
/* 80C6A948  48 00 00 60 */	b lbl_80C6A9A8
lbl_80C6A94C:
/* 80C6A94C  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80C6A950  38 03 00 24 */	addi r0, r3, 0x24
/* 80C6A954  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C6A958  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80C6A95C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C6A960  7F E3 FB 78 */	mr r3, r31
/* 80C6A964  4B 3A FC 15 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C6A968  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C6A96C  38 80 00 FF */	li r4, 0xff
/* 80C6A970  38 A0 00 FF */	li r5, 0xff
/* 80C6A974  7F E6 FB 78 */	mr r6, r31
/* 80C6A978  4B 41 8E E9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C6A97C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80C6A980  3C 80 80 C7 */	lis r4, mCcDCyl__12daFlorBoad_c@ha /* 0x80C6B1B8@ha */
/* 80C6A984  38 84 B1 B8 */	addi r4, r4, mCcDCyl__12daFlorBoad_c@l /* 0x80C6B1B8@l */
/* 80C6A988  4B 41 9F 2D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C6A98C  38 1F 05 A0 */	addi r0, r31, 0x5a0
/* 80C6A990  90 1F 06 20 */	stw r0, 0x620(r31)
/* 80C6A994  7F E3 FB 78 */	mr r3, r31
/* 80C6A998  48 00 01 F9 */	bl init_modeWait__12daFlorBoad_cFv
/* 80C6A99C  7F E3 FB 78 */	mr r3, r31
/* 80C6A9A0  4B FF FD 5D */	bl setBaseMtx__12daFlorBoad_cFv
lbl_80C6A9A4:
/* 80C6A9A4  7F C3 F3 78 */	mr r3, r30
lbl_80C6A9A8:
/* 80C6A9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A9AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6A9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A9B4  7C 08 03 A6 */	mtlr r0
/* 80C6A9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A9BC  4E 80 00 20 */	blr 
