lbl_8066886C:
/* 8066886C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80668870  7C 08 02 A6 */	mflr r0
/* 80668874  90 01 01 14 */	stw r0, 0x114(r1)
/* 80668878  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8066887C  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80668880  39 61 01 00 */	addi r11, r1, 0x100
/* 80668884  4B CF 99 54 */	b _savegpr_28
/* 80668888  7C 7D 1B 78 */	mr r29, r3
/* 8066888C  7C 9C 23 78 */	mr r28, r4
/* 80668890  FF E0 08 90 */	fmr f31, f1
/* 80668894  3C 60 80 67 */	lis r3, lit_3662@ha
/* 80668898  3B E3 ED E8 */	addi r31, r3, lit_3662@l
/* 8066889C  C0 24 00 04 */	lfs f1, 4(r4)
/* 806688A0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806688A4  EC 01 00 2A */	fadds f0, f1, f0
/* 806688A8  D0 04 00 04 */	stfs f0, 4(r4)
/* 806688AC  38 61 00 9C */	addi r3, r1, 0x9c
/* 806688B0  4B A0 EC CC */	b __ct__11dBgS_GndChkFv
/* 806688B4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 806688B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806688BC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806688C0  C0 1C 00 04 */	lfs f0, 4(r28)
/* 806688C4  EC 01 00 2A */	fadds f0, f1, f0
/* 806688C8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806688CC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 806688D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806688D4  38 61 00 9C */	addi r3, r1, 0x9c
/* 806688D8  38 81 00 20 */	addi r4, r1, 0x20
/* 806688DC  4B BF F4 30 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 806688E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806688E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806688E8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 806688EC  7F C3 F3 78 */	mr r3, r30
/* 806688F0  38 81 00 9C */	addi r4, r1, 0x9c
/* 806688F4  4B A0 BB AC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806688F8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806688FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80668900  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80668904  40 81 00 18 */	ble lbl_8066891C
/* 80668908  38 61 00 9C */	addi r3, r1, 0x9c
/* 8066890C  38 80 FF FF */	li r4, -1
/* 80668910  4B A0 EC E0 */	b __dt__11dBgS_GndChkFv
/* 80668914  38 60 00 01 */	li r3, 1
/* 80668918  48 00 00 F8 */	b lbl_80668A10
lbl_8066891C:
/* 8066891C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80668920  4B A0 F3 48 */	b __ct__11dBgS_LinChkFv
/* 80668924  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80668928  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8066892C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80668930  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80668934  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80668938  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8066893C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80668940  EC 01 00 2A */	fadds f0, f1, f0
/* 80668944  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80668948  38 61 00 2C */	addi r3, r1, 0x2c
/* 8066894C  38 81 00 14 */	addi r4, r1, 0x14
/* 80668950  7F 85 E3 78 */	mr r5, r28
/* 80668954  7F A6 EB 78 */	mr r6, r29
/* 80668958  4B A0 F4 0C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8066895C  7F C3 F3 78 */	mr r3, r30
/* 80668960  38 81 00 2C */	addi r4, r1, 0x2c
/* 80668964  4B A0 BA 50 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80668968  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8066896C  41 82 00 24 */	beq lbl_80668990
/* 80668970  38 61 00 2C */	addi r3, r1, 0x2c
/* 80668974  38 80 FF FF */	li r4, -1
/* 80668978  4B A0 F3 64 */	b __dt__11dBgS_LinChkFv
/* 8066897C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80668980  38 80 FF FF */	li r4, -1
/* 80668984  4B A0 EC 6C */	b __dt__11dBgS_GndChkFv
/* 80668988  38 60 FF FF */	li r3, -1
/* 8066898C  48 00 00 84 */	b lbl_80668A10
lbl_80668990:
/* 80668990  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80668994  D0 01 00 08 */	stfs f0, 8(r1)
/* 80668998  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8066899C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806689A0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 806689A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806689A8  7F A3 EB 78 */	mr r3, r29
/* 806689AC  38 81 00 08 */	addi r4, r1, 8
/* 806689B0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806689B4  4B FF FC 71 */	bl depth_check__FP8do_class4cXyzf
/* 806689B8  2C 03 00 00 */	cmpwi r3, 0
/* 806689BC  41 82 00 38 */	beq lbl_806689F4
/* 806689C0  3C 60 80 67 */	lis r3, l_HIO@ha
/* 806689C4  38 63 F2 C4 */	addi r3, r3, l_HIO@l
/* 806689C8  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 806689CC  28 00 00 00 */	cmplwi r0, 0
/* 806689D0  40 82 00 24 */	bne lbl_806689F4
/* 806689D4  38 61 00 2C */	addi r3, r1, 0x2c
/* 806689D8  38 80 FF FF */	li r4, -1
/* 806689DC  4B A0 F3 00 */	b __dt__11dBgS_LinChkFv
/* 806689E0  38 61 00 9C */	addi r3, r1, 0x9c
/* 806689E4  38 80 FF FF */	li r4, -1
/* 806689E8  4B A0 EC 08 */	b __dt__11dBgS_GndChkFv
/* 806689EC  38 60 FF 9C */	li r3, -100
/* 806689F0  48 00 00 20 */	b lbl_80668A10
lbl_806689F4:
/* 806689F4  38 61 00 2C */	addi r3, r1, 0x2c
/* 806689F8  38 80 FF FF */	li r4, -1
/* 806689FC  4B A0 F2 E0 */	b __dt__11dBgS_LinChkFv
/* 80668A00  38 61 00 9C */	addi r3, r1, 0x9c
/* 80668A04  38 80 FF FF */	li r4, -1
/* 80668A08  4B A0 EB E8 */	b __dt__11dBgS_GndChkFv
/* 80668A0C  38 60 00 00 */	li r3, 0
lbl_80668A10:
/* 80668A10  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80668A14  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80668A18  39 61 01 00 */	addi r11, r1, 0x100
/* 80668A1C  4B CF 98 08 */	b _restgpr_28
/* 80668A20  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80668A24  7C 08 03 A6 */	mtlr r0
/* 80668A28  38 21 01 10 */	addi r1, r1, 0x110
/* 80668A2C  4E 80 00 20 */	blr 
