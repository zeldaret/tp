lbl_80BA92F4:
/* 80BA92F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA92F8  7C 08 02 A6 */	mflr r0
/* 80BA92FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9304  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA9308  7C 7F 1B 78 */	mr r31, r3
/* 80BA930C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BA9310  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BA9314  40 82 00 B4 */	bne lbl_80BA93C8
/* 80BA9318  7F E0 FB 79 */	or. r0, r31, r31
/* 80BA931C  41 82 00 A0 */	beq lbl_80BA93BC
/* 80BA9320  7C 1E 03 78 */	mr r30, r0
/* 80BA9324  4B 4C F3 01 */	bl __ct__16dBgS_MoveBgActorFv
/* 80BA9328  3C 60 80 BB */	lis r3, __vt__11daBarDesk_c@ha /* 0x80BA9CD0@ha */
/* 80BA932C  38 03 9C D0 */	addi r0, r3, __vt__11daBarDesk_c@l /* 0x80BA9CD0@l */
/* 80BA9330  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BA9334  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BA9338  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BA933C  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80BA9340  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80BA9344  4B 4D A4 1D */	bl __ct__10dCcD_GSttsFv
/* 80BA9348  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BA934C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BA9350  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 80BA9354  38 03 00 20 */	addi r0, r3, 0x20
/* 80BA9358  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80BA935C  3B DE 05 EC */	addi r30, r30, 0x5ec
/* 80BA9360  7F C3 F3 78 */	mr r3, r30
/* 80BA9364  4B 4D A6 C5 */	bl __ct__12dCcD_GObjInfFv
/* 80BA9368  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BA936C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BA9370  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BA9374  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha /* 0x80BA9CC4@ha */
/* 80BA9378  38 03 9C C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BA9CC4@l */
/* 80BA937C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80BA9380  3C 60 80 BB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BA9CB8@ha */
/* 80BA9384  38 03 9C B8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BA9CB8@l */
/* 80BA9388  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BA938C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BA9390  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BA9394  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BA9398  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA939C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BA93A0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BA93A4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BA93A8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BA93AC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA93B0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BA93B4  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA93B8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BA93BC:
/* 80BA93BC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BA93C0  60 00 00 08 */	ori r0, r0, 8
/* 80BA93C4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BA93C8:
/* 80BA93C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA93CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA93D0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BA93D4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BA93D8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BA93DC  7C 05 07 74 */	extsb r5, r0
/* 80BA93E0  4B 48 BF 81 */	bl isSwitch__10dSv_info_cCFii
/* 80BA93E4  2C 03 00 00 */	cmpwi r3, 0
/* 80BA93E8  41 82 00 0C */	beq lbl_80BA93F4
/* 80BA93EC  38 60 00 05 */	li r3, 5
/* 80BA93F0  48 00 00 B0 */	b lbl_80BA94A0
lbl_80BA93F4:
/* 80BA93F4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BA93F8  3C 80 80 BB */	lis r4, d_a_obj_barDesk__stringBase0@ha /* 0x80BA9BB4@ha */
/* 80BA93FC  38 84 9B B4 */	addi r4, r4, d_a_obj_barDesk__stringBase0@l /* 0x80BA9BB4@l */
/* 80BA9400  4B 48 3A BD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BA9404  7C 7E 1B 78 */	mr r30, r3
/* 80BA9408  2C 1E 00 04 */	cmpwi r30, 4
/* 80BA940C  40 82 00 90 */	bne lbl_80BA949C
/* 80BA9410  7F E3 FB 78 */	mr r3, r31
/* 80BA9414  3C 80 80 BB */	lis r4, d_a_obj_barDesk__stringBase0@ha /* 0x80BA9BB4@ha */
/* 80BA9418  38 84 9B B4 */	addi r4, r4, d_a_obj_barDesk__stringBase0@l /* 0x80BA9BB4@l */
/* 80BA941C  38 A0 00 07 */	li r5, 7
/* 80BA9420  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BA9424  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BA9428  38 E0 0E 50 */	li r7, 0xe50
/* 80BA942C  39 00 00 00 */	li r8, 0
/* 80BA9430  4B 4C F3 8D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BA9434  2C 03 00 05 */	cmpwi r3, 5
/* 80BA9438  40 82 00 0C */	bne lbl_80BA9444
/* 80BA943C  38 60 00 05 */	li r3, 5
/* 80BA9440  48 00 00 60 */	b lbl_80BA94A0
lbl_80BA9444:
/* 80BA9444  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BA9448  38 03 00 24 */	addi r0, r3, 0x24
/* 80BA944C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BA9450  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BA9454  80 83 00 04 */	lwz r4, 4(r3)
/* 80BA9458  7F E3 FB 78 */	mr r3, r31
/* 80BA945C  4B 47 11 1D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BA9460  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80BA9464  38 80 00 FF */	li r4, 0xff
/* 80BA9468  38 A0 00 FF */	li r5, 0xff
/* 80BA946C  7F E6 FB 78 */	mr r6, r31
/* 80BA9470  4B 4D A3 F1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BA9474  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BA9478  3C 80 80 BB */	lis r4, mCcDCyl__11daBarDesk_c@ha /* 0x80BA9BDC@ha */
/* 80BA947C  38 84 9B DC */	addi r4, r4, mCcDCyl__11daBarDesk_c@l /* 0x80BA9BDC@l */
/* 80BA9480  4B 4D B4 35 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BA9484  38 1F 05 B0 */	addi r0, r31, 0x5b0
/* 80BA9488  90 1F 06 30 */	stw r0, 0x630(r31)
/* 80BA948C  7F E3 FB 78 */	mr r3, r31
/* 80BA9490  48 00 01 F1 */	bl init_modeWait__11daBarDesk_cFv
/* 80BA9494  7F E3 FB 78 */	mr r3, r31
/* 80BA9498  4B FF FD 69 */	bl setBaseMtx__11daBarDesk_cFv
lbl_80BA949C:
/* 80BA949C  7F C3 F3 78 */	mr r3, r30
lbl_80BA94A0:
/* 80BA94A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA94A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA94A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA94AC  7C 08 03 A6 */	mtlr r0
/* 80BA94B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA94B4  4E 80 00 20 */	blr 
