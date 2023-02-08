lbl_8080D2C8:
/* 8080D2C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8080D2CC  7C 08 02 A6 */	mflr r0
/* 8080D2D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8080D2D4  39 61 00 60 */	addi r11, r1, 0x60
/* 8080D2D8  4B B5 4F 01 */	bl _savegpr_28
/* 8080D2DC  7C 7D 1B 78 */	mr r29, r3
/* 8080D2E0  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 8080D2E4  3B C3 59 94 */	addi r30, r3, lit_3925@l /* 0x80815994@l */
/* 8080D2E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8080D2EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8080D2F0  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8080D2F4  38 61 00 24 */	addi r3, r1, 0x24
/* 8080D2F8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8080D2FC  38 BD 06 70 */	addi r5, r29, 0x670
/* 8080D300  4B A5 98 35 */	bl __mi__4cXyzCFRC3Vec
/* 8080D304  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8080D308  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8080D30C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8080D310  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8080D314  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8080D318  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8080D31C  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8080D320  28 00 00 01 */	cmplwi r0, 1
/* 8080D324  41 82 00 14 */	beq lbl_8080D338
/* 8080D328  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8080D32C  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 8080D330  C0 5E 01 00 */	lfs f2, 0x100(r30)
/* 8080D334  4B A6 34 0D */	bl cLib_chaseF__FPfff
lbl_8080D338:
/* 8080D338  38 61 00 30 */	addi r3, r1, 0x30
/* 8080D33C  4B B3 9D FD */	bl PSVECSquareMag
/* 8080D340  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080D344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080D348  40 81 00 58 */	ble lbl_8080D3A0
/* 8080D34C  FC 00 08 34 */	frsqrte f0, f1
/* 8080D350  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080D354  FC 44 00 32 */	fmul f2, f4, f0
/* 8080D358  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080D35C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080D360  FC 01 00 32 */	fmul f0, f1, f0
/* 8080D364  FC 03 00 28 */	fsub f0, f3, f0
/* 8080D368  FC 02 00 32 */	fmul f0, f2, f0
/* 8080D36C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080D370  FC 00 00 32 */	fmul f0, f0, f0
/* 8080D374  FC 01 00 32 */	fmul f0, f1, f0
/* 8080D378  FC 03 00 28 */	fsub f0, f3, f0
/* 8080D37C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080D380  FC 44 00 32 */	fmul f2, f4, f0
/* 8080D384  FC 00 00 32 */	fmul f0, f0, f0
/* 8080D388  FC 01 00 32 */	fmul f0, f1, f0
/* 8080D38C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080D390  FC 02 00 32 */	fmul f0, f2, f0
/* 8080D394  FC 21 00 32 */	fmul f1, f1, f0
/* 8080D398  FC 20 08 18 */	frsp f1, f1
/* 8080D39C  48 00 00 88 */	b lbl_8080D424
lbl_8080D3A0:
/* 8080D3A0  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080D3A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080D3A8  40 80 00 10 */	bge lbl_8080D3B8
/* 8080D3AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080D3B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080D3B4  48 00 00 70 */	b lbl_8080D424
lbl_8080D3B8:
/* 8080D3B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8080D3BC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8080D3C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080D3C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080D3C8  7C 03 00 00 */	cmpw r3, r0
/* 8080D3CC  41 82 00 14 */	beq lbl_8080D3E0
/* 8080D3D0  40 80 00 40 */	bge lbl_8080D410
/* 8080D3D4  2C 03 00 00 */	cmpwi r3, 0
/* 8080D3D8  41 82 00 20 */	beq lbl_8080D3F8
/* 8080D3DC  48 00 00 34 */	b lbl_8080D410
lbl_8080D3E0:
/* 8080D3E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080D3E4  41 82 00 0C */	beq lbl_8080D3F0
/* 8080D3E8  38 00 00 01 */	li r0, 1
/* 8080D3EC  48 00 00 28 */	b lbl_8080D414
lbl_8080D3F0:
/* 8080D3F0  38 00 00 02 */	li r0, 2
/* 8080D3F4  48 00 00 20 */	b lbl_8080D414
lbl_8080D3F8:
/* 8080D3F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080D3FC  41 82 00 0C */	beq lbl_8080D408
/* 8080D400  38 00 00 05 */	li r0, 5
/* 8080D404  48 00 00 10 */	b lbl_8080D414
lbl_8080D408:
/* 8080D408  38 00 00 03 */	li r0, 3
/* 8080D40C  48 00 00 08 */	b lbl_8080D414
lbl_8080D410:
/* 8080D410  38 00 00 04 */	li r0, 4
lbl_8080D414:
/* 8080D414  2C 00 00 01 */	cmpwi r0, 1
/* 8080D418  40 82 00 0C */	bne lbl_8080D424
/* 8080D41C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080D420  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080D424:
/* 8080D424  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 8080D428  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080D42C  3B E3 5D 38 */	addi r31, r3, l_HIO@l /* 0x80815D38@l */
/* 8080D430  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8080D434  EC 02 00 2A */	fadds f0, f2, f0
/* 8080D438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080D43C  4C 40 13 82 */	cror 2, 0, 2
/* 8080D440  40 82 00 14 */	bne lbl_8080D454
/* 8080D444  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 8080D448  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 8080D44C  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 8080D450  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
lbl_8080D454:
/* 8080D454  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080D458  2C 00 00 03 */	cmpwi r0, 3
/* 8080D45C  41 82 03 34 */	beq lbl_8080D790
/* 8080D460  40 80 00 1C */	bge lbl_8080D47C
/* 8080D464  2C 00 00 01 */	cmpwi r0, 1
/* 8080D468  41 82 00 60 */	beq lbl_8080D4C8
/* 8080D46C  40 80 02 9C */	bge lbl_8080D708
/* 8080D470  2C 00 00 00 */	cmpwi r0, 0
/* 8080D474  40 80 00 18 */	bge lbl_8080D48C
/* 8080D478  48 00 04 F8 */	b lbl_8080D970
lbl_8080D47C:
/* 8080D47C  2C 00 00 05 */	cmpwi r0, 5
/* 8080D480  41 82 04 A4 */	beq lbl_8080D924
/* 8080D484  40 80 04 EC */	bge lbl_8080D970
/* 8080D488  48 00 03 DC */	b lbl_8080D864
lbl_8080D48C:
/* 8080D48C  7F A3 EB 78 */	mr r3, r29
/* 8080D490  38 80 00 0E */	li r4, 0xe
/* 8080D494  38 A0 00 02 */	li r5, 2
/* 8080D498  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8080D49C  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 8080D4A0  4B FF AD 41 */	bl bckSet__8daE_YM_cFiUcff
/* 8080D4A4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080D4A8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080D4AC  38 00 00 50 */	li r0, 0x50
/* 8080D4B0  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080D4B4  38 00 00 01 */	li r0, 1
/* 8080D4B8  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080D4BC  38 00 00 00 */	li r0, 0
/* 8080D4C0  98 1D 06 A5 */	stb r0, 0x6a5(r29)
/* 8080D4C4  48 00 04 AC */	b lbl_8080D970
lbl_8080D4C8:
/* 8080D4C8  C0 3D 06 D4 */	lfs f1, 0x6d4(r29)
/* 8080D4CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080D4D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080D4D4  41 82 00 44 */	beq lbl_8080D518
/* 8080D4D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8080D4DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8080D4E0  3B 83 56 B8 */	addi r28, r3, 0x56b8
/* 8080D4E4  7F 83 E3 78 */	mr r3, r28
/* 8080D4E8  4B 86 62 FD */	bl LockonTruth__12dAttention_cFv
/* 8080D4EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080D4F0  41 82 00 18 */	beq lbl_8080D508
/* 8080D4F4  7F 83 E3 78 */	mr r3, r28
/* 8080D4F8  38 80 00 00 */	li r4, 0
/* 8080D4FC  4B 86 60 41 */	bl LockonTarget__12dAttention_cFl
/* 8080D500  7C 03 E8 40 */	cmplw r3, r29
/* 8080D504  41 82 00 14 */	beq lbl_8080D518
lbl_8080D508:
/* 8080D508  7F A3 EB 78 */	mr r3, r29
/* 8080D50C  4B FF C1 E1 */	bl checkSurpriseNear__8daE_YM_cFv
/* 8080D510  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080D514  40 82 04 64 */	bne lbl_8080D978
lbl_8080D518:
/* 8080D518  7F A3 EB 78 */	mr r3, r29
/* 8080D51C  4B FF C9 D5 */	bl setTurnSound__8daE_YM_cFv
/* 8080D520  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8080D524  A8 9D 06 E4 */	lha r4, 0x6e4(r29)
/* 8080D528  4B A6 38 FD */	bl cLib_distanceAngleS__Fss
/* 8080D52C  2C 03 02 00 */	cmpwi r3, 0x200
/* 8080D530  40 80 00 4C */	bge lbl_8080D57C
/* 8080D534  7F A3 EB 78 */	mr r3, r29
/* 8080D538  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 8080D53C  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 8080D540  38 84 00 05 */	addi r4, r4, 5
/* 8080D544  38 A0 00 0F */	li r5, 0xf
/* 8080D548  4B FF AC 3D */	bl checkBck__8daE_YM_cFPCci
/* 8080D54C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080D550  40 82 00 1C */	bne lbl_8080D56C
/* 8080D554  7F A3 EB 78 */	mr r3, r29
/* 8080D558  38 80 00 0F */	li r4, 0xf
/* 8080D55C  38 A0 00 02 */	li r5, 2
/* 8080D560  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8080D564  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080D568  4B FF AC 79 */	bl bckSet__8daE_YM_cFiUcff
lbl_8080D56C:
/* 8080D56C  88 7D 06 A5 */	lbz r3, 0x6a5(r29)
/* 8080D570  38 03 00 01 */	addi r0, r3, 1
/* 8080D574  98 1D 06 A5 */	stb r0, 0x6a5(r29)
/* 8080D578  48 00 00 54 */	b lbl_8080D5CC
lbl_8080D57C:
/* 8080D57C  7F A3 EB 78 */	mr r3, r29
/* 8080D580  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 8080D584  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 8080D588  38 84 00 05 */	addi r4, r4, 5
/* 8080D58C  38 A0 00 0E */	li r5, 0xe
/* 8080D590  4B FF AB F5 */	bl checkBck__8daE_YM_cFPCci
/* 8080D594  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080D598  40 82 00 1C */	bne lbl_8080D5B4
/* 8080D59C  7F A3 EB 78 */	mr r3, r29
/* 8080D5A0  38 80 00 0E */	li r4, 0xe
/* 8080D5A4  38 A0 00 02 */	li r5, 2
/* 8080D5A8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8080D5AC  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 8080D5B0  4B FF AC 31 */	bl bckSet__8daE_YM_cFiUcff
lbl_8080D5B4:
/* 8080D5B4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080D5B8  A8 9D 06 E4 */	lha r4, 0x6e4(r29)
/* 8080D5BC  38 A0 02 00 */	li r5, 0x200
/* 8080D5C0  4B A6 35 D1 */	bl cLib_chaseAngleS__FPsss
/* 8080D5C4  38 00 00 00 */	li r0, 0
/* 8080D5C8  98 1D 06 A5 */	stb r0, 0x6a5(r29)
lbl_8080D5CC:
/* 8080D5CC  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080D5D0  2C 00 00 00 */	cmpwi r0, 0
/* 8080D5D4  41 82 01 10 */	beq lbl_8080D6E4
/* 8080D5D8  88 1D 06 A5 */	lbz r0, 0x6a5(r29)
/* 8080D5DC  28 00 00 1E */	cmplwi r0, 0x1e
/* 8080D5E0  40 80 01 04 */	bge lbl_8080D6E4
/* 8080D5E4  38 61 00 30 */	addi r3, r1, 0x30
/* 8080D5E8  4B B3 9B 51 */	bl PSVECSquareMag
/* 8080D5EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080D5F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080D5F4  40 81 00 58 */	ble lbl_8080D64C
/* 8080D5F8  FC 00 08 34 */	frsqrte f0, f1
/* 8080D5FC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080D600  FC 44 00 32 */	fmul f2, f4, f0
/* 8080D604  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080D608  FC 00 00 32 */	fmul f0, f0, f0
/* 8080D60C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080D610  FC 03 00 28 */	fsub f0, f3, f0
/* 8080D614  FC 02 00 32 */	fmul f0, f2, f0
/* 8080D618  FC 44 00 32 */	fmul f2, f4, f0
/* 8080D61C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080D620  FC 01 00 32 */	fmul f0, f1, f0
/* 8080D624  FC 03 00 28 */	fsub f0, f3, f0
/* 8080D628  FC 02 00 32 */	fmul f0, f2, f0
/* 8080D62C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080D630  FC 00 00 32 */	fmul f0, f0, f0
/* 8080D634  FC 01 00 32 */	fmul f0, f1, f0
/* 8080D638  FC 03 00 28 */	fsub f0, f3, f0
/* 8080D63C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080D640  FC 21 00 32 */	fmul f1, f1, f0
/* 8080D644  FC 20 08 18 */	frsp f1, f1
/* 8080D648  48 00 00 88 */	b lbl_8080D6D0
lbl_8080D64C:
/* 8080D64C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080D650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080D654  40 80 00 10 */	bge lbl_8080D664
/* 8080D658  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080D65C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080D660  48 00 00 70 */	b lbl_8080D6D0
lbl_8080D664:
/* 8080D664  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080D668  80 81 00 08 */	lwz r4, 8(r1)
/* 8080D66C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080D670  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080D674  7C 03 00 00 */	cmpw r3, r0
/* 8080D678  41 82 00 14 */	beq lbl_8080D68C
/* 8080D67C  40 80 00 40 */	bge lbl_8080D6BC
/* 8080D680  2C 03 00 00 */	cmpwi r3, 0
/* 8080D684  41 82 00 20 */	beq lbl_8080D6A4
/* 8080D688  48 00 00 34 */	b lbl_8080D6BC
lbl_8080D68C:
/* 8080D68C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080D690  41 82 00 0C */	beq lbl_8080D69C
/* 8080D694  38 00 00 01 */	li r0, 1
/* 8080D698  48 00 00 28 */	b lbl_8080D6C0
lbl_8080D69C:
/* 8080D69C  38 00 00 02 */	li r0, 2
/* 8080D6A0  48 00 00 20 */	b lbl_8080D6C0
lbl_8080D6A4:
/* 8080D6A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080D6A8  41 82 00 0C */	beq lbl_8080D6B4
/* 8080D6AC  38 00 00 05 */	li r0, 5
/* 8080D6B0  48 00 00 10 */	b lbl_8080D6C0
lbl_8080D6B4:
/* 8080D6B4  38 00 00 03 */	li r0, 3
/* 8080D6B8  48 00 00 08 */	b lbl_8080D6C0
lbl_8080D6BC:
/* 8080D6BC  38 00 00 04 */	li r0, 4
lbl_8080D6C0:
/* 8080D6C0  2C 00 00 01 */	cmpwi r0, 1
/* 8080D6C4  40 82 00 0C */	bne lbl_8080D6D0
/* 8080D6C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080D6CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080D6D0:
/* 8080D6D0  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 8080D6D4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8080D6D8  EC 02 00 2A */	fadds f0, f2, f0
/* 8080D6DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080D6E0  40 81 02 90 */	ble lbl_8080D970
lbl_8080D6E4:
/* 8080D6E4  7F A3 EB 78 */	mr r3, r29
/* 8080D6E8  38 80 00 0D */	li r4, 0xd
/* 8080D6EC  38 A0 00 00 */	li r5, 0
/* 8080D6F0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8080D6F4  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 8080D6F8  4B FF AA E9 */	bl bckSet__8daE_YM_cFiUcff
/* 8080D6FC  38 00 00 02 */	li r0, 2
/* 8080D700  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080D704  48 00 02 6C */	b lbl_8080D970
lbl_8080D708:
/* 8080D708  7F A3 EB 78 */	mr r3, r29
/* 8080D70C  4B FF B1 79 */	bl setElecEffect1__8daE_YM_cFv
/* 8080D710  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070195@ha */
/* 8080D714  38 03 01 95 */	addi r0, r3, 0x0195 /* 0x00070195@l */
/* 8080D718  90 01 00 20 */	stw r0, 0x20(r1)
/* 8080D71C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080D720  38 81 00 20 */	addi r4, r1, 0x20
/* 8080D724  38 A0 00 00 */	li r5, 0
/* 8080D728  38 C0 FF FF */	li r6, -1
/* 8080D72C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080D730  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080D734  7D 89 03 A6 */	mtctr r12
/* 8080D738  4E 80 04 21 */	bctrl 
/* 8080D73C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080D740  38 80 00 01 */	li r4, 1
/* 8080D744  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080D748  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080D74C  40 82 00 18 */	bne lbl_8080D764
/* 8080D750  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080D754  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080D758  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080D75C  41 82 00 08 */	beq lbl_8080D764
/* 8080D760  38 80 00 00 */	li r4, 0
lbl_8080D764:
/* 8080D764  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080D768  41 82 02 08 */	beq lbl_8080D970
/* 8080D76C  7F A3 EB 78 */	mr r3, r29
/* 8080D770  38 80 00 0A */	li r4, 0xa
/* 8080D774  38 A0 00 00 */	li r5, 0
/* 8080D778  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8080D77C  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 8080D780  4B FF AA 61 */	bl bckSet__8daE_YM_cFiUcff
/* 8080D784  38 00 00 03 */	li r0, 3
/* 8080D788  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080D78C  48 00 01 E4 */	b lbl_8080D970
lbl_8080D790:
/* 8080D790  7F A3 EB 78 */	mr r3, r29
/* 8080D794  4B FF B2 49 */	bl setElecEffect2__8daE_YM_cFv
/* 8080D798  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 8080D79C  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 8080D7A0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8080D7A4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080D7A8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8080D7AC  38 A0 00 00 */	li r5, 0
/* 8080D7B0  38 C0 FF FF */	li r6, -1
/* 8080D7B4  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080D7B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080D7BC  7D 89 03 A6 */	mtctr r12
/* 8080D7C0  4E 80 04 21 */	bctrl 
/* 8080D7C4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080D7C8  38 80 00 01 */	li r4, 1
/* 8080D7CC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080D7D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080D7D4  40 82 00 18 */	bne lbl_8080D7EC
/* 8080D7D8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080D7DC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080D7E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080D7E4  41 82 00 08 */	beq lbl_8080D7EC
/* 8080D7E8  38 80 00 00 */	li r4, 0
lbl_8080D7EC:
/* 8080D7EC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080D7F0  41 82 01 80 */	beq lbl_8080D970
/* 8080D7F4  7F A3 EB 78 */	mr r3, r29
/* 8080D7F8  38 80 00 0B */	li r4, 0xb
/* 8080D7FC  38 A0 00 00 */	li r5, 0
/* 8080D800  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8080D804  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080D808  4B FF A9 D9 */	bl bckSet__8daE_YM_cFiUcff
/* 8080D80C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F0@ha */
/* 8080D810  38 03 00 F0 */	addi r0, r3, 0x00F0 /* 0x000700F0@l */
/* 8080D814  90 01 00 18 */	stw r0, 0x18(r1)
/* 8080D818  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080D81C  38 81 00 18 */	addi r4, r1, 0x18
/* 8080D820  38 A0 00 00 */	li r5, 0
/* 8080D824  38 C0 FF FF */	li r6, -1
/* 8080D828  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080D82C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080D830  7D 89 03 A6 */	mtctr r12
/* 8080D834  4E 80 04 21 */	bctrl 
/* 8080D838  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8080D83C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080D840  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 8080D844  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 8080D848  EC 21 00 32 */	fmuls f1, f1, f0
/* 8080D84C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8080D850  EC 01 00 24 */	fdivs f0, f1, f0
/* 8080D854  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080D858  38 00 00 04 */	li r0, 4
/* 8080D85C  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080D860  48 00 01 10 */	b lbl_8080D970
lbl_8080D864:
/* 8080D864  7F A3 EB 78 */	mr r3, r29
/* 8080D868  4B FF B1 75 */	bl setElecEffect2__8daE_YM_cFv
/* 8080D86C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 8080D870  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 8080D874  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080D878  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080D87C  38 81 00 14 */	addi r4, r1, 0x14
/* 8080D880  38 A0 00 00 */	li r5, 0
/* 8080D884  38 C0 FF FF */	li r6, -1
/* 8080D888  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080D88C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080D890  7D 89 03 A6 */	mtctr r12
/* 8080D894  4E 80 04 21 */	bctrl 
/* 8080D898  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080D89C  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080D8A0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8080D8A4  FC 00 00 1E */	fctiwz f0, f0
/* 8080D8A8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8080D8AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8080D8B0  B0 1D 07 00 */	sth r0, 0x700(r29)
/* 8080D8B4  80 1D 09 74 */	lwz r0, 0x974(r29)
/* 8080D8B8  60 00 00 01 */	ori r0, r0, 1
/* 8080D8BC  90 1D 09 74 */	stw r0, 0x974(r29)
/* 8080D8C0  80 1D 07 8C */	lwz r0, 0x78c(r29)
/* 8080D8C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080D8C8  41 82 00 A8 */	beq lbl_8080D970
/* 8080D8CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011E@ha */
/* 8080D8D0  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0007011E@l */
/* 8080D8D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080D8D8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080D8DC  38 81 00 10 */	addi r4, r1, 0x10
/* 8080D8E0  38 A0 00 00 */	li r5, 0
/* 8080D8E4  38 C0 FF FF */	li r6, -1
/* 8080D8E8  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080D8EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080D8F0  7D 89 03 A6 */	mtctr r12
/* 8080D8F4  4E 80 04 21 */	bctrl 
/* 8080D8F8  7F A3 EB 78 */	mr r3, r29
/* 8080D8FC  38 80 00 0C */	li r4, 0xc
/* 8080D900  38 A0 00 00 */	li r5, 0
/* 8080D904  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080D908  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080D90C  4B FF A8 D5 */	bl bckSet__8daE_YM_cFiUcff
/* 8080D910  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080D914  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080D918  38 00 00 05 */	li r0, 5
/* 8080D91C  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080D920  48 00 00 50 */	b lbl_8080D970
lbl_8080D924:
/* 8080D924  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080D928  38 80 00 01 */	li r4, 1
/* 8080D92C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080D930  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080D934  40 82 00 18 */	bne lbl_8080D94C
/* 8080D938  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080D93C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080D940  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080D944  41 82 00 08 */	beq lbl_8080D94C
/* 8080D948  38 80 00 00 */	li r4, 0
lbl_8080D94C:
/* 8080D94C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080D950  41 82 00 20 */	beq lbl_8080D970
/* 8080D954  7F A3 EB 78 */	mr r3, r29
/* 8080D958  38 80 00 00 */	li r4, 0
/* 8080D95C  4B FF C6 41 */	bl setActionMode__8daE_YM_cFi
/* 8080D960  38 00 00 0F */	li r0, 0xf
/* 8080D964  B0 1D 06 F6 */	sth r0, 0x6f6(r29)
/* 8080D968  38 00 00 32 */	li r0, 0x32
/* 8080D96C  B0 1D 06 FC */	sth r0, 0x6fc(r29)
lbl_8080D970:
/* 8080D970  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8080D974  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8080D978:
/* 8080D978  39 61 00 60 */	addi r11, r1, 0x60
/* 8080D97C  4B B5 48 A9 */	bl _restgpr_28
/* 8080D980  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8080D984  7C 08 03 A6 */	mtlr r0
/* 8080D988  38 21 00 60 */	addi r1, r1, 0x60
/* 8080D98C  4E 80 00 20 */	blr 
