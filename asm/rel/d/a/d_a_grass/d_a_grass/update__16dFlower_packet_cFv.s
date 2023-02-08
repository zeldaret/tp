lbl_80522A64:
/* 80522A64  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80522A68  7C 08 02 A6 */	mflr r0
/* 80522A6C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80522A70  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80522A74  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80522A78  39 61 00 50 */	addi r11, r1, 0x50
/* 80522A7C  4B E3 F7 51 */	bl _savegpr_25
/* 80522A80  7C 7A 1B 78 */	mr r26, r3
/* 80522A84  3C 60 80 52 */	lis r3, lit_3999@ha /* 0x80523028@ha */
/* 80522A88  3B E3 30 28 */	addi r31, r3, lit_3999@l /* 0x80523028@l */
/* 80522A8C  3F DA 00 01 */	addis r30, r26, 1
/* 80522A90  3B 20 00 00 */	li r25, 0
/* 80522A94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80522A98  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80522A9C  7F BC EB 78 */	mr r28, r29
/* 80522AA0  7F BB EB 78 */	mr r27, r29
/* 80522AA4  3B DE 19 54 */	addi r30, r30, 0x1954
lbl_80522AA8:
/* 80522AA8  7F A3 EB 78 */	mr r3, r29
/* 80522AAC  A8 9E 00 02 */	lha r4, 2(r30)
/* 80522AB0  4B AE 99 2D */	bl mDoMtx_YrotS__FPA4_fs
/* 80522AB4  7F A3 EB 78 */	mr r3, r29
/* 80522AB8  A8 9E 00 04 */	lha r4, 4(r30)
/* 80522ABC  4B AE 98 E1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80522AC0  7F 83 E3 78 */	mr r3, r28
/* 80522AC4  A8 1E 00 02 */	lha r0, 2(r30)
/* 80522AC8  7C 00 00 D0 */	neg r0, r0
/* 80522ACC  7C 04 07 34 */	extsh r4, r0
/* 80522AD0  4B AE 99 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 80522AD4  7F 63 DB 78 */	mr r3, r27
/* 80522AD8  38 9E 00 08 */	addi r4, r30, 8
/* 80522ADC  4B E2 39 D5 */	bl PSMTXCopy
/* 80522AE0  3B 39 00 01 */	addi r25, r25, 1
/* 80522AE4  2C 19 00 48 */	cmpwi r25, 0x48
/* 80522AE8  3B DE 00 38 */	addi r30, r30, 0x38
/* 80522AEC  41 80 FF BC */	blt lbl_80522AA8
/* 80522AF0  3B BA 00 14 */	addi r29, r26, 0x14
/* 80522AF4  3F DA 00 01 */	addis r30, r26, 1
/* 80522AF8  3B 80 00 00 */	li r28, 0
/* 80522AFC  3B 60 00 00 */	li r27, 0
/* 80522B00  3B DE 19 54 */	addi r30, r30, 0x1954
lbl_80522B04:
/* 80522B04  88 1D 00 00 */	lbz r0, 0(r29)
/* 80522B08  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80522B0C  41 82 01 68 */	beq lbl_80522C74
/* 80522B10  38 7D 00 03 */	addi r3, r29, 3
/* 80522B14  4B FF AC A1 */	bl func_8051D7B4
/* 80522B18  88 1D 00 00 */	lbz r0, 0(r29)
/* 80522B1C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80522B20  41 82 00 28 */	beq lbl_80522B48
/* 80522B24  2C 1C 00 08 */	cmpwi r28, 8
/* 80522B28  40 80 00 20 */	bge lbl_80522B48
/* 80522B2C  38 7D 00 08 */	addi r3, r29, 8
/* 80522B30  4B FF FE 6D */	bl flowerCheckGroundY__FR4cXyz
/* 80522B34  D0 3D 00 0C */	stfs f1, 0xc(r29)
/* 80522B38  88 1D 00 00 */	lbz r0, 0(r29)
/* 80522B3C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80522B40  98 1D 00 00 */	stb r0, 0(r29)
/* 80522B44  3B 9C 00 01 */	addi r28, r28, 1
lbl_80522B48:
/* 80522B48  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 80522B4C  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 80522B50  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80522B54  EC 41 00 2A */	fadds f2, f1, f0
/* 80522B58  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80522B5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80522B60  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80522B64  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80522B68  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80522B6C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80522B70  90 61 00 08 */	stw r3, 8(r1)
/* 80522B74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80522B78  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80522B7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80522B80  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 80522B84  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 80522B88  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80522B8C  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 80522B90  38 A1 00 08 */	addi r5, r1, 8
/* 80522B94  4B D5 0D 69 */	bl clip__11J3DUClipperCFPA4_Cf3Vecf
/* 80522B98  2C 03 00 00 */	cmpwi r3, 0
/* 80522B9C  41 82 00 1C */	beq lbl_80522BB8
/* 80522BA0  88 1D 00 00 */	lbz r0, 0(r29)
/* 80522BA4  60 00 00 04 */	ori r0, r0, 4
/* 80522BA8  98 1D 00 00 */	stb r0, 0(r29)
/* 80522BAC  7F A3 EB 78 */	mr r3, r29
/* 80522BB0  4B FF DF 29 */	bl deleteAnm__14dFlower_data_cFv
/* 80522BB4  48 00 00 C0 */	b lbl_80522C74
lbl_80522BB8:
/* 80522BB8  88 1D 00 00 */	lbz r0, 0(r29)
/* 80522BBC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80522BC0  98 1D 00 00 */	stb r0, 0(r29)
/* 80522BC4  88 1D 00 01 */	lbz r0, 1(r29)
/* 80522BC8  7C 00 07 74 */	extsb r0, r0
/* 80522BCC  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80522BD0  3B 23 00 08 */	addi r25, r3, 8
/* 80522BD4  7F 3E CA 14 */	add r25, r30, r25
/* 80522BD8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80522BDC  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 80522BE0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80522BE4  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 80522BE8  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80522BEC  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 80522BF0  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 80522BF4  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80522BF8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80522BFC  FC 00 00 1E */	fctiwz f0, f0
/* 80522C00  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80522C04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80522C08  7C 00 07 34 */	extsh r0, r0
/* 80522C0C  1C 00 0D CF */	mulli r0, r0, 0xdcf
/* 80522C10  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 80522C14  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 80522C18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80522C1C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80522C20  3C 00 43 30 */	lis r0, 0x4330
/* 80522C24  90 01 00 28 */	stw r0, 0x28(r1)
/* 80522C28  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80522C2C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80522C30  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80522C34  EC 01 00 24 */	fdivs f0, f1, f0
/* 80522C38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80522C3C  EF E3 00 2A */	fadds f31, f3, f0
/* 80522C40  7F 23 CB 78 */	mr r3, r25
/* 80522C44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80522C48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80522C4C  4B E2 38 65 */	bl PSMTXCopy
/* 80522C50  FC 20 F8 90 */	fmr f1, f31
/* 80522C54  FC 40 F8 90 */	fmr f2, f31
/* 80522C58  FC 60 F8 90 */	fmr f3, f31
/* 80522C5C  4B AE A1 DD */	bl scaleM__14mDoMtx_stack_cFfff
/* 80522C60  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80522C64  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80522C68  7F 24 CB 78 */	mr r4, r25
/* 80522C6C  38 BD 00 14 */	addi r5, r29, 0x14
/* 80522C70  4B E2 38 75 */	bl PSMTXConcat
lbl_80522C74:
/* 80522C74  3B 7B 00 01 */	addi r27, r27, 1
/* 80522C78  2C 1B 03 E8 */	cmpwi r27, 0x3e8
/* 80522C7C  3B BD 00 48 */	addi r29, r29, 0x48
/* 80522C80  41 80 FE 84 */	blt lbl_80522B04
/* 80522C84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80522C88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80522C8C  80 63 5F 90 */	lwz r3, 0x5f90(r3)
/* 80522C90  7F 44 D3 78 */	mr r4, r26
/* 80522C94  38 A0 00 00 */	li r5, 0
/* 80522C98  4B E0 27 F5 */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80522C9C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80522CA0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80522CA4  39 61 00 50 */	addi r11, r1, 0x50
/* 80522CA8  4B E3 F5 71 */	bl _restgpr_25
/* 80522CAC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80522CB0  7C 08 03 A6 */	mtlr r0
/* 80522CB4  38 21 00 60 */	addi r1, r1, 0x60
/* 80522CB8  4E 80 00 20 */	blr 
