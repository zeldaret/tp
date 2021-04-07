lbl_8057D33C:
/* 8057D33C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057D340  7C 08 02 A6 */	mflr r0
/* 8057D344  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057D348  39 61 00 20 */	addi r11, r1, 0x20
/* 8057D34C  4B DE 4E 8D */	bl _savegpr_28
/* 8057D350  7C 7D 1B 78 */	mr r29, r3
/* 8057D354  3C 80 80 58 */	lis r4, lit_3656@ha /* 0x8057F570@ha */
/* 8057D358  3B E4 F5 70 */	addi r31, r4, lit_3656@l /* 0x8057F570@l */
/* 8057D35C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8057D360  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8057D364  40 82 00 EC */	bne lbl_8057D450
/* 8057D368  7F A0 EB 79 */	or. r0, r29, r29
/* 8057D36C  41 82 00 D8 */	beq lbl_8057D444
/* 8057D370  7C 1E 03 78 */	mr r30, r0
/* 8057D374  4B A9 B7 F1 */	bl __ct__10fopAc_ac_cFv
/* 8057D378  3C 60 80 58 */	lis r3, __vt__10daGpTaru_c@ha /* 0x8057F890@ha */
/* 8057D37C  38 03 F8 90 */	addi r0, r3, __vt__10daGpTaru_c@l /* 0x8057F890@l */
/* 8057D380  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8057D384  3B 9E 05 A4 */	addi r28, r30, 0x5a4
/* 8057D388  7F 83 E3 78 */	mr r3, r28
/* 8057D38C  4B AF 8D 15 */	bl __ct__9dBgS_AcchFv
/* 8057D390  3C 60 80 58 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8057F86C@ha */
/* 8057D394  38 63 F8 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8057F86C@l */
/* 8057D398  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8057D39C  38 03 00 0C */	addi r0, r3, 0xc
/* 8057D3A0  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8057D3A4  38 03 00 18 */	addi r0, r3, 0x18
/* 8057D3A8  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8057D3AC  38 7C 00 14 */	addi r3, r28, 0x14
/* 8057D3B0  4B AF BA B9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8057D3B4  38 7E 07 7C */	addi r3, r30, 0x77c
/* 8057D3B8  4B AF 8A F5 */	bl __ct__12dBgS_AcchCirFv
/* 8057D3BC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8057D3C0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8057D3C4  90 1E 07 D4 */	stw r0, 0x7d4(r30)
/* 8057D3C8  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 8057D3CC  4B B0 63 95 */	bl __ct__10dCcD_GSttsFv
/* 8057D3D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8057D3D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8057D3D8  90 7E 07 D4 */	stw r3, 0x7d4(r30)
/* 8057D3DC  38 03 00 20 */	addi r0, r3, 0x20
/* 8057D3E0  90 1E 07 D8 */	stw r0, 0x7d8(r30)
/* 8057D3E4  3B 9E 07 F8 */	addi r28, r30, 0x7f8
/* 8057D3E8  7F 83 E3 78 */	mr r3, r28
/* 8057D3EC  4B B0 66 3D */	bl __ct__12dCcD_GObjInfFv
/* 8057D3F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8057D3F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8057D3F8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8057D3FC  3C 60 80 58 */	lis r3, __vt__8cM3dGAab@ha /* 0x8057F860@ha */
/* 8057D400  38 03 F8 60 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8057F860@l */
/* 8057D404  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8057D408  3C 60 80 58 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8057F854@ha */
/* 8057D40C  38 03 F8 54 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8057F854@l */
/* 8057D410  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8057D414  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8057D418  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8057D41C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8057D420  38 03 00 58 */	addi r0, r3, 0x58
/* 8057D424  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8057D428  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8057D42C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8057D430  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8057D434  38 03 00 2C */	addi r0, r3, 0x2c
/* 8057D438  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8057D43C  38 03 00 84 */	addi r0, r3, 0x84
/* 8057D440  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_8057D444:
/* 8057D444  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8057D448  60 00 00 08 */	ori r0, r0, 8
/* 8057D44C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8057D450:
/* 8057D450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057D454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057D458  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8057D45C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8057D460  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8057D464  7C 05 07 74 */	extsb r5, r0
/* 8057D468  4B AB 7E F9 */	bl isSwitch__10dSv_info_cCFii
/* 8057D46C  2C 03 00 00 */	cmpwi r3, 0
/* 8057D470  41 82 00 0C */	beq lbl_8057D47C
/* 8057D474  38 60 00 05 */	li r3, 5
/* 8057D478  48 00 01 70 */	b lbl_8057D5E8
lbl_8057D47C:
/* 8057D47C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 8057D480  3C 80 80 58 */	lis r4, d_a_obj_gpTaru__stringBase0@ha /* 0x8057F664@ha */
/* 8057D484  38 84 F6 64 */	addi r4, r4, d_a_obj_gpTaru__stringBase0@l /* 0x8057F664@l */
/* 8057D488  4B AA FA 35 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8057D48C  7C 7E 1B 78 */	mr r30, r3
/* 8057D490  2C 1E 00 04 */	cmpwi r30, 4
/* 8057D494  40 82 01 50 */	bne lbl_8057D5E4
/* 8057D498  7F A3 EB 78 */	mr r3, r29
/* 8057D49C  3C 80 80 58 */	lis r4, createHeapCallBack__10daGpTaru_cFP10fopAc_ac_c@ha /* 0x8057D7CC@ha */
/* 8057D4A0  38 84 D7 CC */	addi r4, r4, createHeapCallBack__10daGpTaru_cFP10fopAc_ac_c@l /* 0x8057D7CC@l */
/* 8057D4A4  38 A0 08 20 */	li r5, 0x820
/* 8057D4A8  4B A9 D0 09 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8057D4AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057D4B0  40 82 00 0C */	bne lbl_8057D4BC
/* 8057D4B4  38 60 00 05 */	li r3, 5
/* 8057D4B8  48 00 01 30 */	b lbl_8057D5E8
lbl_8057D4BC:
/* 8057D4BC  7F A3 EB 78 */	mr r3, r29
/* 8057D4C0  4B FF FD 39 */	bl setBaseMtx__10daGpTaru_cFv
/* 8057D4C4  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8057D4C8  38 03 00 24 */	addi r0, r3, 0x24
/* 8057D4CC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8057D4D0  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8057D4D4  80 83 00 04 */	lwz r4, 4(r3)
/* 8057D4D8  7F A3 EB 78 */	mr r3, r29
/* 8057D4DC  4B A9 D0 9D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 8057D4E0  38 7D 07 7C */	addi r3, r29, 0x77c
/* 8057D4E4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8057D4E8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8057D4EC  4B AF 8A 6D */	bl SetWall__12dBgS_AcchCirFff
/* 8057D4F0  38 00 00 00 */	li r0, 0
/* 8057D4F4  90 01 00 08 */	stw r0, 8(r1)
/* 8057D4F8  38 7D 05 A4 */	addi r3, r29, 0x5a4
/* 8057D4FC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8057D500  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8057D504  7F A6 EB 78 */	mr r6, r29
/* 8057D508  38 E0 00 01 */	li r7, 1
/* 8057D50C  39 1D 07 7C */	addi r8, r29, 0x77c
/* 8057D510  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8057D514  39 40 00 00 */	li r10, 0
/* 8057D518  4B AF 8D 31 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8057D51C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8057D520  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8057D524  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8057D528  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 8057D52C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 8057D530  90 1D 05 24 */	stw r0, 0x524(r29)
/* 8057D534  38 7D 07 BC */	addi r3, r29, 0x7bc
/* 8057D538  38 80 00 FE */	li r4, 0xfe
/* 8057D53C  38 A0 00 FF */	li r5, 0xff
/* 8057D540  7F A6 EB 78 */	mr r6, r29
/* 8057D544  4B B0 63 1D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8057D548  38 7D 07 F8 */	addi r3, r29, 0x7f8
/* 8057D54C  3C 80 80 58 */	lis r4, mCcDCyl__10daGpTaru_c@ha /* 0x8057F6A8@ha */
/* 8057D550  38 84 F6 A8 */	addi r4, r4, mCcDCyl__10daGpTaru_c@l /* 0x8057F6A8@l */
/* 8057D554  4B B0 73 61 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8057D558  38 1D 07 BC */	addi r0, r29, 0x7bc
/* 8057D55C  90 1D 08 3C */	stw r0, 0x83c(r29)
/* 8057D560  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8057D564  98 1D 09 54 */	stb r0, 0x954(r29)
/* 8057D568  88 1D 04 9A */	lbz r0, 0x49a(r29)
/* 8057D56C  60 00 00 01 */	ori r0, r0, 1
/* 8057D570  98 1D 04 9A */	stb r0, 0x49a(r29)
/* 8057D574  88 1D 09 54 */	lbz r0, 0x954(r29)
/* 8057D578  28 00 00 00 */	cmplwi r0, 0
/* 8057D57C  40 82 00 1C */	bne lbl_8057D598
/* 8057D580  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 8057D584  60 00 00 10 */	ori r0, r0, 0x10
/* 8057D588  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8057D58C  38 00 00 2A */	li r0, 0x2a
/* 8057D590  98 1D 05 48 */	stb r0, 0x548(r29)
/* 8057D594  48 00 00 10 */	b lbl_8057D5A4
lbl_8057D598:
/* 8057D598  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 8057D59C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8057D5A0  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8057D5A4:
/* 8057D5A4  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8057D5A8  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 8057D5AC  98 1D 05 79 */	stb r0, 0x579(r29)
/* 8057D5B0  7F A3 EB 78 */	mr r3, r29
/* 8057D5B4  48 00 10 29 */	bl mode_init_wait__10daGpTaru_cFv
/* 8057D5B8  38 00 00 00 */	li r0, 0
/* 8057D5BC  B0 1D 09 3C */	sth r0, 0x93c(r29)
/* 8057D5C0  B0 1D 09 3E */	sth r0, 0x93e(r29)
/* 8057D5C4  B0 1D 09 40 */	sth r0, 0x940(r29)
/* 8057D5C8  90 1D 09 44 */	stw r0, 0x944(r29)
/* 8057D5CC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057D5D0  D0 1D 09 38 */	stfs f0, 0x938(r29)
/* 8057D5D4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8057D5D8  D0 1D 09 48 */	stfs f0, 0x948(r29)
/* 8057D5DC  38 00 00 01 */	li r0, 1
/* 8057D5E0  98 1D 09 55 */	stb r0, 0x955(r29)
lbl_8057D5E4:
/* 8057D5E4  7F C3 F3 78 */	mr r3, r30
lbl_8057D5E8:
/* 8057D5E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057D5EC  4B DE 4C 39 */	bl _restgpr_28
/* 8057D5F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057D5F4  7C 08 03 A6 */	mtlr r0
/* 8057D5F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057D5FC  4E 80 00 20 */	blr 
