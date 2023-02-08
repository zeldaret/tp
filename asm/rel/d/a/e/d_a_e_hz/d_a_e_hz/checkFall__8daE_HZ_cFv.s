lbl_806EB13C:
/* 806EB13C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806EB140  7C 08 02 A6 */	mflr r0
/* 806EB144  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806EB148  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 806EB14C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 806EB150  39 61 00 90 */	addi r11, r1, 0x90
/* 806EB154  4B C7 70 89 */	bl _savegpr_29
/* 806EB158  7C 7F 1B 78 */	mr r31, r3
/* 806EB15C  3C 60 80 6F */	lis r3, lit_3966@ha /* 0x806F0860@ha */
/* 806EB160  3B C3 08 60 */	addi r30, r3, lit_3966@l /* 0x806F0860@l */
/* 806EB164  80 1F 06 C0 */	lwz r0, 0x6c0(r31)
/* 806EB168  2C 00 00 0B */	cmpwi r0, 0xb
/* 806EB16C  41 82 01 5C */	beq lbl_806EB2C8
/* 806EB170  2C 00 00 0A */	cmpwi r0, 0xa
/* 806EB174  40 82 00 08 */	bne lbl_806EB17C
/* 806EB178  48 00 01 50 */	b lbl_806EB2C8
lbl_806EB17C:
/* 806EB17C  80 1F 0B 24 */	lwz r0, 0xb24(r31)
/* 806EB180  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806EB184  41 82 00 2C */	beq lbl_806EB1B0
/* 806EB188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EB18C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EB190  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EB194  38 9F 0B E8 */	addi r4, r31, 0xbe8
/* 806EB198  4B 98 9D 59 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 806EB19C  2C 03 00 0A */	cmpwi r3, 0xa
/* 806EB1A0  41 82 00 10 */	beq lbl_806EB1B0
/* 806EB1A4  38 03 FF FC */	addi r0, r3, -4
/* 806EB1A8  28 00 00 01 */	cmplwi r0, 1
/* 806EB1AC  41 81 01 1C */	bgt lbl_806EB2C8
lbl_806EB1B0:
/* 806EB1B0  38 61 00 20 */	addi r3, r1, 0x20
/* 806EB1B4  4B 98 C3 C9 */	bl __ct__11dBgS_GndChkFv
/* 806EB1B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806EB1BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806EB1C0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806EB1C4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806EB1C8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806EB1CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806EB1D0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806EB1D4  EC 01 00 2A */	fadds f0, f1, f0
/* 806EB1D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806EB1DC  38 61 00 20 */	addi r3, r1, 0x20
/* 806EB1E0  38 81 00 14 */	addi r4, r1, 0x14
/* 806EB1E4  4B B7 CB 45 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806EB1E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EB1EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EB1F0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806EB1F4  7F A3 EB 78 */	mr r3, r29
/* 806EB1F8  38 81 00 20 */	addi r4, r1, 0x20
/* 806EB1FC  4B 98 92 A5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806EB200  FF E0 08 90 */	fmr f31, f1
/* 806EB204  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 806EB208  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806EB20C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EB210  40 80 00 AC */	bge lbl_806EB2BC
/* 806EB214  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 806EB218  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 806EB21C  41 82 00 A0 */	beq lbl_806EB2BC
/* 806EB220  7F A3 EB 78 */	mr r3, r29
/* 806EB224  38 81 00 34 */	addi r4, r1, 0x34
/* 806EB228  4B 98 9C C9 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 806EB22C  2C 03 00 04 */	cmpwi r3, 4
/* 806EB230  41 82 00 14 */	beq lbl_806EB244
/* 806EB234  2C 03 00 0A */	cmpwi r3, 0xa
/* 806EB238  41 82 00 0C */	beq lbl_806EB244
/* 806EB23C  2C 03 00 05 */	cmpwi r3, 5
/* 806EB240  40 82 00 7C */	bne lbl_806EB2BC
lbl_806EB244:
/* 806EB244  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 806EB248  EC 20 F8 2A */	fadds f1, f0, f31
/* 806EB24C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806EB250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EB254  40 81 00 68 */	ble lbl_806EB2BC
/* 806EB258  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EB25C  80 63 00 04 */	lwz r3, 4(r3)
/* 806EB260  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806EB264  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806EB268  38 63 03 60 */	addi r3, r3, 0x360
/* 806EB26C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EB270  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EB274  4B C5 B2 3D */	bl PSMTXCopy
/* 806EB278  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EB27C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EB280  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806EB284  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EB288  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806EB28C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EB290  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806EB294  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EB298  7F E3 FB 78 */	mr r3, r31
/* 806EB29C  38 81 00 08 */	addi r4, r1, 8
/* 806EB2A0  38 A0 00 0A */	li r5, 0xa
/* 806EB2A4  38 C0 00 00 */	li r6, 0
/* 806EB2A8  38 E0 00 05 */	li r7, 5
/* 806EB2AC  4B 93 18 2D */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806EB2B0  7F E3 FB 78 */	mr r3, r31
/* 806EB2B4  38 80 00 0B */	li r4, 0xb
/* 806EB2B8  4B FF F8 25 */	bl setActionMode__8daE_HZ_cFi
lbl_806EB2BC:
/* 806EB2BC  38 61 00 20 */	addi r3, r1, 0x20
/* 806EB2C0  38 80 FF FF */	li r4, -1
/* 806EB2C4  4B 98 C3 2D */	bl __dt__11dBgS_GndChkFv
lbl_806EB2C8:
/* 806EB2C8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 806EB2CC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 806EB2D0  39 61 00 90 */	addi r11, r1, 0x90
/* 806EB2D4  4B C7 6F 55 */	bl _restgpr_29
/* 806EB2D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806EB2DC  7C 08 03 A6 */	mtlr r0
/* 806EB2E0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806EB2E4  4E 80 00 20 */	blr 
