lbl_80D1FD44:
/* 80D1FD44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1FD48  7C 08 02 A6 */	mflr r0
/* 80D1FD4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1FD50  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1FD54  4B 64 24 85 */	bl _savegpr_28
/* 80D1FD58  7C 7E 1B 78 */	mr r30, r3
/* 80D1FD5C  3C 80 80 D2 */	lis r4, lit_3638@ha /* 0x80D20308@ha */
/* 80D1FD60  3B E4 03 08 */	addi r31, r4, lit_3638@l /* 0x80D20308@l */
/* 80D1FD64  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D1FD68  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D1FD6C  40 82 00 80 */	bne lbl_80D1FDEC
/* 80D1FD70  7F C0 F3 79 */	or. r0, r30, r30
/* 80D1FD74  41 82 00 6C */	beq lbl_80D1FDE0
/* 80D1FD78  7C 1D 03 78 */	mr r29, r0
/* 80D1FD7C  4B 35 88 A9 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D1FD80  3C 60 80 D2 */	lis r3, __vt__10daTwGate_c@ha /* 0x80D2064C@ha */
/* 80D1FD84  38 03 06 4C */	addi r0, r3, __vt__10daTwGate_c@l /* 0x80D2064C@l */
/* 80D1FD88  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80D1FD8C  3B 9D 05 AC */	addi r28, r29, 0x5ac
/* 80D1FD90  3C 60 80 D2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D20640@ha */
/* 80D1FD94  38 03 06 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D20640@l */
/* 80D1FD98  90 1D 05 AC */	stw r0, 0x5ac(r29)
/* 80D1FD9C  7F 83 E3 78 */	mr r3, r28
/* 80D1FDA0  38 80 00 00 */	li r4, 0
/* 80D1FDA4  4B 60 86 59 */	bl init__12J3DFrameCtrlFs
/* 80D1FDA8  38 00 00 00 */	li r0, 0
/* 80D1FDAC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80D1FDB0  3B 9D 05 C4 */	addi r28, r29, 0x5c4
/* 80D1FDB4  3C 60 80 D2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D20640@ha */
/* 80D1FDB8  38 03 06 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D20640@l */
/* 80D1FDBC  90 1D 05 C4 */	stw r0, 0x5c4(r29)
/* 80D1FDC0  7F 83 E3 78 */	mr r3, r28
/* 80D1FDC4  38 80 00 00 */	li r4, 0
/* 80D1FDC8  4B 60 86 35 */	bl init__12J3DFrameCtrlFs
/* 80D1FDCC  38 00 00 00 */	li r0, 0
/* 80D1FDD0  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80D1FDD4  3C 60 80 D2 */	lis r3, __vt__8cM3dGLin@ha /* 0x80D20634@ha */
/* 80D1FDD8  38 03 06 34 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80D20634@l */
/* 80D1FDDC  90 1D 05 F8 */	stw r0, 0x5f8(r29)
lbl_80D1FDE0:
/* 80D1FDE0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D1FDE4  60 00 00 08 */	ori r0, r0, 8
/* 80D1FDE8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D1FDEC:
/* 80D1FDEC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1FDF0  54 00 E6 3E */	rlwinm r0, r0, 0x1c, 0x18, 0x1f
/* 80D1FDF4  98 1E 05 DC */	stb r0, 0x5dc(r30)
/* 80D1FDF8  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80D1FDFC  54 05 10 3A */	slwi r5, r0, 2
/* 80D1FE00  38 7F 00 04 */	addi r3, r31, 4
/* 80D1FE04  7C 03 28 2E */	lwzx r0, r3, r5
/* 80D1FE08  2C 00 FF FF */	cmpwi r0, -1
/* 80D1FE0C  40 82 00 0C */	bne lbl_80D1FE18
/* 80D1FE10  38 60 00 05 */	li r3, 5
/* 80D1FE14  48 00 00 E8 */	b lbl_80D1FEFC
lbl_80D1FE18:
/* 80D1FE18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1FE1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1FE20  38 63 00 28 */	addi r3, r3, 0x28
/* 80D1FE24  38 9F 00 D4 */	addi r4, r31, 0xd4
/* 80D1FE28  7C 84 28 2E */	lwzx r4, r4, r5
/* 80D1FE2C  4B 31 2D 85 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 80D1FE30  2C 03 00 01 */	cmpwi r3, 1
/* 80D1FE34  40 82 00 0C */	bne lbl_80D1FE40
/* 80D1FE38  38 60 00 05 */	li r3, 5
/* 80D1FE3C  48 00 00 C0 */	b lbl_80D1FEFC
lbl_80D1FE40:
/* 80D1FE40  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80D1FE44  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80D1FE48  54 00 10 3A */	slwi r0, r0, 2
/* 80D1FE4C  3C 80 80 D2 */	lis r4, l_resNameIdx@ha /* 0x80D205B0@ha */
/* 80D1FE50  38 84 05 B0 */	addi r4, r4, l_resNameIdx@l /* 0x80D205B0@l */
/* 80D1FE54  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1FE58  4B 30 D0 65 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D1FE5C  7C 7D 1B 78 */	mr r29, r3
/* 80D1FE60  2C 1D 00 04 */	cmpwi r29, 4
/* 80D1FE64  40 82 00 94 */	bne lbl_80D1FEF8
/* 80D1FE68  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80D1FE6C  54 00 10 3A */	slwi r0, r0, 2
/* 80D1FE70  7F C3 F3 78 */	mr r3, r30
/* 80D1FE74  3C 80 80 D2 */	lis r4, l_resNameIdx@ha /* 0x80D205B0@ha */
/* 80D1FE78  38 84 05 B0 */	addi r4, r4, l_resNameIdx@l /* 0x80D205B0@l */
/* 80D1FE7C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1FE80  38 BF 00 38 */	addi r5, r31, 0x38
/* 80D1FE84  7C A5 00 2E */	lwzx r5, r5, r0
/* 80D1FE88  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80D1FE8C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80D1FE90  38 E0 22 A0 */	li r7, 0x22a0
/* 80D1FE94  39 00 00 00 */	li r8, 0
/* 80D1FE98  4B 35 89 25 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D1FE9C  2C 03 00 05 */	cmpwi r3, 5
/* 80D1FEA0  40 82 00 0C */	bne lbl_80D1FEAC
/* 80D1FEA4  38 60 00 05 */	li r3, 5
/* 80D1FEA8  48 00 00 54 */	b lbl_80D1FEFC
lbl_80D1FEAC:
/* 80D1FEAC  7F C3 F3 78 */	mr r3, r30
/* 80D1FEB0  4B FF FC D5 */	bl setBaseMtx__10daTwGate_cFv
/* 80D1FEB4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D1FEB8  38 03 00 24 */	addi r0, r3, 0x24
/* 80D1FEBC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D1FEC0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D1FEC4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D1FEC8  7F C3 F3 78 */	mr r3, r30
/* 80D1FECC  4B 2F A6 AD */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D1FED0  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80D1FED4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D1FED8  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80D1FEDC  38 9F 01 08 */	addi r4, r31, 0x108
/* 80D1FEE0  7C 84 02 14 */	add r4, r4, r0
/* 80D1FEE4  38 BF 01 A4 */	addi r5, r31, 0x1a4
/* 80D1FEE8  7C A5 02 14 */	add r5, r5, r0
/* 80D1FEEC  4B 54 F4 31 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80D1FEF0  C0 1F 02 44 */	lfs f0, 0x244(r31)
/* 80D1FEF4  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
lbl_80D1FEF8:
/* 80D1FEF8  7F A3 EB 78 */	mr r3, r29
lbl_80D1FEFC:
/* 80D1FEFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1FF00  4B 64 23 25 */	bl _restgpr_28
/* 80D1FF04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1FF08  7C 08 03 A6 */	mtlr r0
/* 80D1FF0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1FF10  4E 80 00 20 */	blr 
