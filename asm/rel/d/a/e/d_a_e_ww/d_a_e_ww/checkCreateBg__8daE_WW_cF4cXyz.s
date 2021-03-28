lbl_807E830C:
/* 807E830C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 807E8310  7C 08 02 A6 */	mflr r0
/* 807E8314  90 01 01 24 */	stw r0, 0x124(r1)
/* 807E8318  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 807E831C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 807E8320  39 61 01 10 */	addi r11, r1, 0x110
/* 807E8324  4B B7 9E B8 */	b _savegpr_29
/* 807E8328  7C 7E 1B 78 */	mr r30, r3
/* 807E832C  7C 9D 23 78 */	mr r29, r4
/* 807E8330  C0 04 00 00 */	lfs f0, 0(r4)
/* 807E8334  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E8338  C0 24 00 04 */	lfs f1, 4(r4)
/* 807E833C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807E8340  C0 04 00 08 */	lfs f0, 8(r4)
/* 807E8344  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E8348  C0 03 06 AC */	lfs f0, 0x6ac(r3)
/* 807E834C  EC 01 00 2A */	fadds f0, f1, f0
/* 807E8350  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E8354  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807E8358  4B 88 F2 24 */	b __ct__11dBgS_GndChkFv
/* 807E835C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807E8360  38 81 00 14 */	addi r4, r1, 0x14
/* 807E8364  4B A7 F9 C4 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807E8368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E836C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E8370  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 807E8374  7F E3 FB 78 */	mr r3, r31
/* 807E8378  38 81 00 A4 */	addi r4, r1, 0xa4
/* 807E837C  4B 88 C1 24 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807E8380  FF E0 08 90 */	fmr f31, f1
/* 807E8384  3C 60 80 7F */	lis r3, lit_4248@ha
/* 807E8388  C0 03 F7 D8 */	lfs f0, lit_4248@l(r3)
/* 807E838C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 807E8390  41 82 01 54 */	beq lbl_807E84E4
/* 807E8394  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E8398  EC 1F 00 28 */	fsubs f0, f31, f0
/* 807E839C  FC 00 02 10 */	fabs f0, f0
/* 807E83A0  FC 20 00 18 */	frsp f1, f0
/* 807E83A4  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 807E83A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E83AC  40 81 00 1C */	ble lbl_807E83C8
/* 807E83B0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807E83B4  38 80 FF FF */	li r4, -1
/* 807E83B8  4B 88 F2 38 */	b __dt__11dBgS_GndChkFv
/* 807E83BC  3C 60 80 7F */	lis r3, lit_4248@ha
/* 807E83C0  C0 23 F7 D8 */	lfs f1, lit_4248@l(r3)
/* 807E83C4  48 00 01 34 */	b lbl_807E84F8
lbl_807E83C8:
/* 807E83C8  7F E3 FB 78 */	mr r3, r31
/* 807E83CC  3B C1 00 B8 */	addi r30, r1, 0xb8
/* 807E83D0  7F C4 F3 78 */	mr r4, r30
/* 807E83D4  4B 88 C8 E8 */	b GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 807E83D8  2C 03 00 05 */	cmpwi r3, 5
/* 807E83DC  41 82 00 18 */	beq lbl_807E83F4
/* 807E83E0  7F E3 FB 78 */	mr r3, r31
/* 807E83E4  7F C4 F3 78 */	mr r4, r30
/* 807E83E8  4B 88 CA 68 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 807E83EC  2C 03 00 0D */	cmpwi r3, 0xd
/* 807E83F0  40 82 00 F4 */	bne lbl_807E84E4
lbl_807E83F4:
/* 807E83F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E83F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E83FC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E8400  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807E8404  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E8408  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 807E840C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 807E8410  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807E8414  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E8418  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807E841C  C0 23 F7 70 */	lfs f1, lit_3905@l(r3)
/* 807E8420  EC 02 08 2A */	fadds f0, f2, f1
/* 807E8424  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E8428  C0 1D 00 00 */	lfs f0, 0(r29)
/* 807E842C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E8430  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807E8434  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E8438  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807E843C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E8440  EC 01 F8 2A */	fadds f0, f1, f31
/* 807E8444  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E8448  38 61 00 34 */	addi r3, r1, 0x34
/* 807E844C  4B 88 F8 1C */	b __ct__11dBgS_LinChkFv
/* 807E8450  38 61 00 34 */	addi r3, r1, 0x34
/* 807E8454  38 81 00 08 */	addi r4, r1, 8
/* 807E8458  38 A1 00 14 */	addi r5, r1, 0x14
/* 807E845C  38 C0 00 00 */	li r6, 0
/* 807E8460  4B 88 F9 04 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807E8464  7F E3 FB 78 */	mr r3, r31
/* 807E8468  38 81 00 34 */	addi r4, r1, 0x34
/* 807E846C  4B 88 BF 48 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807E8470  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E8474  41 82 00 50 */	beq lbl_807E84C4
/* 807E8478  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807E847C  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807E8480  90 01 00 30 */	stw r0, 0x30(r1)
/* 807E8484  7F E3 FB 78 */	mr r3, r31
/* 807E8488  38 81 00 48 */	addi r4, r1, 0x48
/* 807E848C  38 A1 00 20 */	addi r5, r1, 0x20
/* 807E8490  4B 88 C2 B4 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 807E8494  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807E8498  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807E849C  90 01 00 30 */	stw r0, 0x30(r1)
/* 807E84A0  38 61 00 34 */	addi r3, r1, 0x34
/* 807E84A4  38 80 FF FF */	li r4, -1
/* 807E84A8  4B 88 F8 34 */	b __dt__11dBgS_LinChkFv
/* 807E84AC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807E84B0  38 80 FF FF */	li r4, -1
/* 807E84B4  4B 88 F1 3C */	b __dt__11dBgS_GndChkFv
/* 807E84B8  3C 60 80 7F */	lis r3, lit_4248@ha
/* 807E84BC  C0 23 F7 D8 */	lfs f1, lit_4248@l(r3)
/* 807E84C0  48 00 00 38 */	b lbl_807E84F8
lbl_807E84C4:
/* 807E84C4  38 61 00 34 */	addi r3, r1, 0x34
/* 807E84C8  38 80 FF FF */	li r4, -1
/* 807E84CC  4B 88 F8 10 */	b __dt__11dBgS_LinChkFv
/* 807E84D0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807E84D4  38 80 FF FF */	li r4, -1
/* 807E84D8  4B 88 F1 18 */	b __dt__11dBgS_GndChkFv
/* 807E84DC  FC 20 F8 90 */	fmr f1, f31
/* 807E84E0  48 00 00 18 */	b lbl_807E84F8
lbl_807E84E4:
/* 807E84E4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807E84E8  38 80 FF FF */	li r4, -1
/* 807E84EC  4B 88 F1 04 */	b __dt__11dBgS_GndChkFv
/* 807E84F0  3C 60 80 7F */	lis r3, lit_4248@ha
/* 807E84F4  C0 23 F7 D8 */	lfs f1, lit_4248@l(r3)
lbl_807E84F8:
/* 807E84F8  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 807E84FC  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 807E8500  39 61 01 10 */	addi r11, r1, 0x110
/* 807E8504  4B B7 9D 24 */	b _restgpr_29
/* 807E8508  80 01 01 24 */	lwz r0, 0x124(r1)
/* 807E850C  7C 08 03 A6 */	mtlr r0
/* 807E8510  38 21 01 20 */	addi r1, r1, 0x120
/* 807E8514  4E 80 00 20 */	blr 
