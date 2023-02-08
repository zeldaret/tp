lbl_80C8A500:
/* 80C8A500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8A504  7C 08 02 A6 */	mflr r0
/* 80C8A508  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8A50C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8A510  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8A514  7C 7E 1B 78 */	mr r30, r3
/* 80C8A518  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C8A51C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C8A520  40 82 00 4C */	bne lbl_80C8A56C
/* 80C8A524  7F C0 F3 79 */	or. r0, r30, r30
/* 80C8A528  41 82 00 38 */	beq lbl_80C8A560
/* 80C8A52C  7C 1F 03 78 */	mr r31, r0
/* 80C8A530  4B 3E E0 F5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C8A534  3C 60 80 C9 */	lis r3, __vt__12daOptiLift_c@ha /* 0x80C8BB98@ha */
/* 80C8A538  38 03 BB 98 */	addi r0, r3, __vt__12daOptiLift_c@l /* 0x80C8BB98@l */
/* 80C8A53C  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80C8A540  3C 60 80 C9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C8BB8C@ha */
/* 80C8A544  38 03 BB 8C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C8BB8C@l */
/* 80C8A548  94 1F 05 AC */	stwu r0, 0x5ac(r31)
/* 80C8A54C  7F E3 FB 78 */	mr r3, r31
/* 80C8A550  38 80 00 00 */	li r4, 0
/* 80C8A554  4B 69 DE A9 */	bl init__12J3DFrameCtrlFs
/* 80C8A558  38 00 00 00 */	li r0, 0
/* 80C8A55C  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_80C8A560:
/* 80C8A560  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C8A564  60 00 00 08 */	ori r0, r0, 8
/* 80C8A568  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C8A56C:
/* 80C8A56C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C8A570  3C 80 80 C9 */	lis r4, d_a_obj_lv8OptiLift__stringBase0@ha /* 0x80C8BA3C@ha */
/* 80C8A574  38 84 BA 3C */	addi r4, r4, d_a_obj_lv8OptiLift__stringBase0@l /* 0x80C8BA3C@l */
/* 80C8A578  4B 3A 29 45 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C8A57C  7C 7F 1B 78 */	mr r31, r3
/* 80C8A580  2C 1F 00 04 */	cmpwi r31, 4
/* 80C8A584  40 82 01 98 */	bne lbl_80C8A71C
/* 80C8A588  7F C3 F3 78 */	mr r3, r30
/* 80C8A58C  3C 80 80 C9 */	lis r4, d_a_obj_lv8OptiLift__stringBase0@ha /* 0x80C8BA3C@ha */
/* 80C8A590  38 84 BA 3C */	addi r4, r4, d_a_obj_lv8OptiLift__stringBase0@l /* 0x80C8BA3C@l */
/* 80C8A594  38 A0 00 0B */	li r5, 0xb
/* 80C8A598  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C8A59C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C8A5A0  38 E0 0D 20 */	li r7, 0xd20
/* 80C8A5A4  39 00 00 00 */	li r8, 0
/* 80C8A5A8  4B 3E E2 15 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C8A5AC  2C 03 00 05 */	cmpwi r3, 5
/* 80C8A5B0  40 82 00 0C */	bne lbl_80C8A5BC
/* 80C8A5B4  38 60 00 05 */	li r3, 5
/* 80C8A5B8  48 00 01 68 */	b lbl_80C8A720
lbl_80C8A5BC:
/* 80C8A5BC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8A5C0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C8A5C4  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 80C8A5C8  88 7E 05 C8 */	lbz r3, 0x5c8(r30)
/* 80C8A5CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8A5D0  7C 04 07 74 */	extsb r4, r0
/* 80C8A5D4  4B 3C 72 19 */	bl dPath_GetRoomPath__Fii
/* 80C8A5D8  28 03 00 00 */	cmplwi r3, 0
/* 80C8A5DC  40 82 00 0C */	bne lbl_80C8A5E8
/* 80C8A5E0  38 60 00 00 */	li r3, 0
/* 80C8A5E4  48 00 01 3C */	b lbl_80C8A720
lbl_80C8A5E8:
/* 80C8A5E8  80 63 00 08 */	lwz r3, 8(r3)
/* 80C8A5EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C8A5F0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C8A5F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C8A5F8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C8A5FC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C8A600  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C8A604  38 00 00 01 */	li r0, 1
/* 80C8A608  98 1E 05 C9 */	stb r0, 0x5c9(r30)
/* 80C8A60C  38 00 00 00 */	li r0, 0
/* 80C8A610  B0 1E 05 CA */	sth r0, 0x5ca(r30)
/* 80C8A614  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8A618  54 00 96 BA */	rlwinm r0, r0, 0x12, 0x1a, 0x1d
/* 80C8A61C  3C 60 80 C9 */	lis r3, mSpeed__12daOptiLift_c@ha /* 0x80C8B9B0@ha */
/* 80C8A620  38 63 B9 B0 */	addi r3, r3, mSpeed__12daOptiLift_c@l /* 0x80C8B9B0@l */
/* 80C8A624  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C8A628  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80C8A62C  3C 60 80 C9 */	lis r3, lit_3778@ha /* 0x80C8B9F4@ha */
/* 80C8A630  C0 03 B9 F4 */	lfs f0, lit_3778@l(r3)  /* 0x80C8B9F4@l */
/* 80C8A634  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C8A638  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8A63C  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 80C8A640  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C8A644  28 04 00 00 */	cmplwi r4, 0
/* 80C8A648  41 82 00 14 */	beq lbl_80C8A65C
/* 80C8A64C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8A650  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8A654  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C8A658  4B 3E 9B F9 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C8A65C:
/* 80C8A65C  38 00 00 00 */	li r0, 0
/* 80C8A660  98 1E 06 15 */	stb r0, 0x615(r30)
/* 80C8A664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8A668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8A66C  88 9E 05 C4 */	lbz r4, 0x5c4(r30)
/* 80C8A670  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C8A674  7C 05 07 74 */	extsb r5, r0
/* 80C8A678  4B 3A AC E9 */	bl isSwitch__10dSv_info_cCFii
/* 80C8A67C  98 7E 05 E9 */	stb r3, 0x5e9(r30)
/* 80C8A680  7F C3 F3 78 */	mr r3, r30
/* 80C8A684  48 00 0C 05 */	bl init_modeWait__12daOptiLift_cFv
/* 80C8A688  38 00 00 00 */	li r0, 0
/* 80C8A68C  98 1E 06 16 */	stb r0, 0x616(r30)
/* 80C8A690  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8A694  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8A698  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C8A69C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8A6A0  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8A6A4  7F C3 F3 78 */	mr r3, r30
/* 80C8A6A8  4B 38 FE D1 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C8A6AC  7F C3 F3 78 */	mr r3, r30
/* 80C8A6B0  4B FF FD 01 */	bl setBaseMtx__12daOptiLift_cFv
/* 80C8A6B4  3C 60 80 C9 */	lis r3, rideCallBack__12daOptiLift_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C8A7D0@ha */
/* 80C8A6B8  38 03 A7 D0 */	addi r0, r3, rideCallBack__12daOptiLift_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C8A7D0@l */
/* 80C8A6BC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C8A6C0  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C8A6C4  7F C3 F3 78 */	mr r3, r30
/* 80C8A6C8  48 00 00 B9 */	bl lightSet__12daOptiLift_cFv
/* 80C8A6CC  38 00 00 00 */	li r0, 0
/* 80C8A6D0  98 1E 06 14 */	stb r0, 0x614(r30)
/* 80C8A6D4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8A6D8  80 63 00 04 */	lwz r3, 4(r3)
/* 80C8A6DC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C8A6E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8A6E4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80C8A6E8  38 80 00 01 */	li r4, 1
/* 80C8A6EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80C8A6F0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80C8A6F4  7D 89 03 A6 */	mtctr r12
/* 80C8A6F8  4E 80 04 21 */	bctrl 
/* 80C8A6FC  3C 80 80 C9 */	lis r4, l_HIO@ha /* 0x80C8BBEC@ha */
/* 80C8A700  38 84 BB EC */	addi r4, r4, l_HIO@l /* 0x80C8BBEC@l */
/* 80C8A704  88 04 00 07 */	lbz r0, 7(r4)
/* 80C8A708  98 03 00 00 */	stb r0, 0(r3)
/* 80C8A70C  88 04 00 08 */	lbz r0, 8(r4)
/* 80C8A710  98 03 00 01 */	stb r0, 1(r3)
/* 80C8A714  88 04 00 09 */	lbz r0, 9(r4)
/* 80C8A718  98 03 00 02 */	stb r0, 2(r3)
lbl_80C8A71C:
/* 80C8A71C  7F E3 FB 78 */	mr r3, r31
lbl_80C8A720:
/* 80C8A720  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8A724  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8A728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8A72C  7C 08 03 A6 */	mtlr r0
/* 80C8A730  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8A734  4E 80 00 20 */	blr 
