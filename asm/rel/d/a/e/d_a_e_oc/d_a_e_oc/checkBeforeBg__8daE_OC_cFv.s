lbl_8072D364:
/* 8072D364  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8072D368  7C 08 02 A6 */	mflr r0
/* 8072D36C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8072D370  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8072D374  4B C3 4E 69 */	bl _savegpr_29
/* 8072D378  7C 7E 1B 78 */	mr r30, r3
/* 8072D37C  3C 60 80 73 */	lis r3, lit_3911@ha /* 0x80735B28@ha */
/* 8072D380  3B E3 5B 28 */	addi r31, r3, lit_3911@l /* 0x80735B28@l */
/* 8072D384  38 61 00 38 */	addi r3, r1, 0x38
/* 8072D388  4B 94 A8 E1 */	bl __ct__11dBgS_LinChkFv
/* 8072D38C  3C 60 80 73 */	lis r3, __vt__8cM3dGPla@ha /* 0x80735FE0@ha */
/* 8072D390  38 03 5F E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80735FE0@l */
/* 8072D394  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072D398  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 8072D39C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8072D3A0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8072D3A4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8072D3A8  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8072D3AC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8072D3B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8072D3B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8072D3B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8072D3BC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8072D3C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8072D3C4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8072D3C8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8072D3CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8072D3D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8072D3D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8072D3D8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8072D3DC  FC 20 10 18 */	frsp f1, f2
/* 8072D3E0  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 8072D3E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8072D3E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8072D3EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8072D3F0  7C 63 02 14 */	add r3, r3, r0
/* 8072D3F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8072D3F8  FC 20 18 18 */	frsp f1, f3
/* 8072D3FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8072D400  EC 01 00 2A */	fadds f0, f1, f0
/* 8072D404  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8072D408  38 61 00 38 */	addi r3, r1, 0x38
/* 8072D40C  38 81 00 18 */	addi r4, r1, 0x18
/* 8072D410  38 A1 00 0C */	addi r5, r1, 0xc
/* 8072D414  7F C6 F3 78 */	mr r6, r30
/* 8072D418  4B 94 A9 4D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8072D41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072D420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072D424  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8072D428  7F A3 EB 78 */	mr r3, r29
/* 8072D42C  38 81 00 38 */	addi r4, r1, 0x38
/* 8072D430  4B 94 6F 85 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8072D434  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072D438  41 82 01 8C */	beq lbl_8072D5C4
/* 8072D43C  7F A3 EB 78 */	mr r3, r29
/* 8072D440  38 81 00 4C */	addi r4, r1, 0x4c
/* 8072D444  38 A1 00 24 */	addi r5, r1, 0x24
/* 8072D448  4B 94 72 FD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8072D44C  38 81 00 68 */	addi r4, r1, 0x68
/* 8072D450  38 61 00 18 */	addi r3, r1, 0x18
/* 8072D454  4B C1 9F 49 */	bl PSVECSquareDistance
/* 8072D458  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072D45C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072D460  40 81 00 58 */	ble lbl_8072D4B8
/* 8072D464  FC 00 08 34 */	frsqrte f0, f1
/* 8072D468  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072D46C  FC 44 00 32 */	fmul f2, f4, f0
/* 8072D470  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072D474  FC 00 00 32 */	fmul f0, f0, f0
/* 8072D478  FC 01 00 32 */	fmul f0, f1, f0
/* 8072D47C  FC 03 00 28 */	fsub f0, f3, f0
/* 8072D480  FC 02 00 32 */	fmul f0, f2, f0
/* 8072D484  FC 44 00 32 */	fmul f2, f4, f0
/* 8072D488  FC 00 00 32 */	fmul f0, f0, f0
/* 8072D48C  FC 01 00 32 */	fmul f0, f1, f0
/* 8072D490  FC 03 00 28 */	fsub f0, f3, f0
/* 8072D494  FC 02 00 32 */	fmul f0, f2, f0
/* 8072D498  FC 44 00 32 */	fmul f2, f4, f0
/* 8072D49C  FC 00 00 32 */	fmul f0, f0, f0
/* 8072D4A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8072D4A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8072D4A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8072D4AC  FC 21 00 32 */	fmul f1, f1, f0
/* 8072D4B0  FC 20 08 18 */	frsp f1, f1
/* 8072D4B4  48 00 00 88 */	b lbl_8072D53C
lbl_8072D4B8:
/* 8072D4B8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072D4BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072D4C0  40 80 00 10 */	bge lbl_8072D4D0
/* 8072D4C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072D4C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8072D4CC  48 00 00 70 */	b lbl_8072D53C
lbl_8072D4D0:
/* 8072D4D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8072D4D4  80 81 00 08 */	lwz r4, 8(r1)
/* 8072D4D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072D4DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072D4E0  7C 03 00 00 */	cmpw r3, r0
/* 8072D4E4  41 82 00 14 */	beq lbl_8072D4F8
/* 8072D4E8  40 80 00 40 */	bge lbl_8072D528
/* 8072D4EC  2C 03 00 00 */	cmpwi r3, 0
/* 8072D4F0  41 82 00 20 */	beq lbl_8072D510
/* 8072D4F4  48 00 00 34 */	b lbl_8072D528
lbl_8072D4F8:
/* 8072D4F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072D4FC  41 82 00 0C */	beq lbl_8072D508
/* 8072D500  38 00 00 01 */	li r0, 1
/* 8072D504  48 00 00 28 */	b lbl_8072D52C
lbl_8072D508:
/* 8072D508  38 00 00 02 */	li r0, 2
/* 8072D50C  48 00 00 20 */	b lbl_8072D52C
lbl_8072D510:
/* 8072D510  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072D514  41 82 00 0C */	beq lbl_8072D520
/* 8072D518  38 00 00 05 */	li r0, 5
/* 8072D51C  48 00 00 10 */	b lbl_8072D52C
lbl_8072D520:
/* 8072D520  38 00 00 03 */	li r0, 3
/* 8072D524  48 00 00 08 */	b lbl_8072D52C
lbl_8072D528:
/* 8072D528  38 00 00 04 */	li r0, 4
lbl_8072D52C:
/* 8072D52C  2C 00 00 01 */	cmpwi r0, 1
/* 8072D530  40 82 00 0C */	bne lbl_8072D53C
/* 8072D534  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072D538  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8072D53C:
/* 8072D53C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8072D540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072D544  40 80 00 24 */	bge lbl_8072D568
/* 8072D548  3C 60 80 73 */	lis r3, __vt__8cM3dGPla@ha /* 0x80735FE0@ha */
/* 8072D54C  38 03 5F E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80735FE0@l */
/* 8072D550  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072D554  38 61 00 38 */	addi r3, r1, 0x38
/* 8072D558  38 80 FF FF */	li r4, -1
/* 8072D55C  4B 94 A7 81 */	bl __dt__11dBgS_LinChkFv
/* 8072D560  38 60 00 01 */	li r3, 1
/* 8072D564  48 00 00 7C */	b lbl_8072D5E0
lbl_8072D568:
/* 8072D568  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8072D56C  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8072D570  4B B3 A1 05 */	bl cM_atan2s__Fff
/* 8072D574  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8072D578  7C 00 18 50 */	subf r0, r0, r3
/* 8072D57C  7C 00 07 35 */	extsh. r0, r0
/* 8072D580  40 81 00 24 */	ble lbl_8072D5A4
/* 8072D584  3C 60 80 73 */	lis r3, __vt__8cM3dGPla@ha /* 0x80735FE0@ha */
/* 8072D588  38 03 5F E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80735FE0@l */
/* 8072D58C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072D590  38 61 00 38 */	addi r3, r1, 0x38
/* 8072D594  38 80 FF FF */	li r4, -1
/* 8072D598  4B 94 A7 45 */	bl __dt__11dBgS_LinChkFv
/* 8072D59C  38 60 00 02 */	li r3, 2
/* 8072D5A0  48 00 00 40 */	b lbl_8072D5E0
lbl_8072D5A4:
/* 8072D5A4  3C 60 80 73 */	lis r3, __vt__8cM3dGPla@ha /* 0x80735FE0@ha */
/* 8072D5A8  38 03 5F E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80735FE0@l */
/* 8072D5AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072D5B0  38 61 00 38 */	addi r3, r1, 0x38
/* 8072D5B4  38 80 FF FF */	li r4, -1
/* 8072D5B8  4B 94 A7 25 */	bl __dt__11dBgS_LinChkFv
/* 8072D5BC  38 60 00 03 */	li r3, 3
/* 8072D5C0  48 00 00 20 */	b lbl_8072D5E0
lbl_8072D5C4:
/* 8072D5C4  3C 60 80 73 */	lis r3, __vt__8cM3dGPla@ha /* 0x80735FE0@ha */
/* 8072D5C8  38 03 5F E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80735FE0@l */
/* 8072D5CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072D5D0  38 61 00 38 */	addi r3, r1, 0x38
/* 8072D5D4  38 80 FF FF */	li r4, -1
/* 8072D5D8  4B 94 A7 05 */	bl __dt__11dBgS_LinChkFv
/* 8072D5DC  38 60 00 00 */	li r3, 0
lbl_8072D5E0:
/* 8072D5E0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8072D5E4  4B C3 4C 45 */	bl _restgpr_29
/* 8072D5E8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8072D5EC  7C 08 03 A6 */	mtlr r0
/* 8072D5F0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8072D5F4  4E 80 00 20 */	blr 
