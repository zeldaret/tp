lbl_8065F7DC:
/* 8065F7DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8065F7E0  7C 08 02 A6 */	mflr r0
/* 8065F7E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065F7E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8065F7EC  4B D0 29 F1 */	bl _savegpr_29
/* 8065F7F0  7C 7E 1B 78 */	mr r30, r3
/* 8065F7F4  3C 80 80 66 */	lis r4, lit_3987@ha /* 0x80662DB0@ha */
/* 8065F7F8  3B E4 2D B0 */	addi r31, r4, lit_3987@l /* 0x80662DB0@l */
/* 8065F7FC  88 03 0C 61 */	lbz r0, 0xc61(r3)
/* 8065F800  28 00 00 07 */	cmplwi r0, 7
/* 8065F804  41 81 06 34 */	bgt lbl_8065FE38
/* 8065F808  3C 80 80 66 */	lis r4, lit_6981@ha /* 0x80663250@ha */
/* 8065F80C  38 84 32 50 */	addi r4, r4, lit_6981@l /* 0x80663250@l */
/* 8065F810  54 00 10 3A */	slwi r0, r0, 2
/* 8065F814  7C 04 00 2E */	lwzx r0, r4, r0
/* 8065F818  7C 09 03 A6 */	mtctr r0
/* 8065F81C  4E 80 04 20 */	bctr 
lbl_8065F820:
/* 8065F820  4B FF 93 F9 */	bl setActetcStatus__7daCow_cFv
/* 8065F824  80 7E 0C 0C */	lwz r3, 0xc0c(r30)
/* 8065F828  88 9E 0C 10 */	lbz r4, 0xc10(r30)
/* 8065F82C  7C 84 07 74 */	extsb r4, r4
/* 8065F830  4B 9F 1F 81 */	bl dPath_GetPnt__FPC5dPathi
/* 8065F834  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065F838  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8065F83C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8065F840  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8065F844  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8065F848  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8065F84C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8065F850  38 81 00 14 */	addi r4, r1, 0x14
/* 8065F854  4B C1 13 B1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065F858  7C 7D 1B 78 */	mr r29, r3
/* 8065F85C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8065F860  7F A4 EB 78 */	mr r4, r29
/* 8065F864  38 A0 00 10 */	li r5, 0x10
/* 8065F868  38 C0 01 00 */	li r6, 0x100
/* 8065F86C  38 E0 00 80 */	li r7, 0x80
/* 8065F870  4B C1 0C D1 */	bl cLib_addCalcAngleS__FPsssss
/* 8065F874  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8065F878  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8065F87C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8065F880  40 81 00 14 */	ble lbl_8065F894
/* 8065F884  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8065F888  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8065F88C  4B C1 0E B5 */	bl cLib_chaseF__FPfff
/* 8065F890  48 00 00 14 */	b lbl_8065F8A4
lbl_8065F894:
/* 8065F894  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8065F898  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8065F89C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065F8A0  4B C1 0E A1 */	bl cLib_chaseF__FPfff
lbl_8065F8A4:
/* 8065F8A4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8065F8A8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8065F8AC  38 A0 00 08 */	li r5, 8
/* 8065F8B0  38 C0 01 00 */	li r6, 0x100
/* 8065F8B4  38 E0 00 80 */	li r7, 0x80
/* 8065F8B8  4B C1 0C 89 */	bl cLib_addCalcAngleS__FPsssss
/* 8065F8BC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8065F8C0  B0 1E 0C 34 */	sth r0, 0xc34(r30)
/* 8065F8C4  7F C3 F3 78 */	mr r3, r30
/* 8065F8C8  7F A4 EB 78 */	mr r4, r29
/* 8065F8CC  4B FF 95 CD */	bl setBodyAngle__7daCow_cFs
/* 8065F8D0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8065F8D4  38 81 00 14 */	addi r4, r1, 0x14
/* 8065F8D8  4B CE 7A C5 */	bl PSVECSquareDistance
/* 8065F8DC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065F8E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F8E4  40 81 00 58 */	ble lbl_8065F93C
/* 8065F8E8  FC 00 08 34 */	frsqrte f0, f1
/* 8065F8EC  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065F8F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F8F4  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065F8F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F8FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F900  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F904  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F908  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F90C  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F910  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F914  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F918  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F91C  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F920  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F924  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F928  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F92C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F930  FC 21 00 32 */	fmul f1, f1, f0
/* 8065F934  FC 20 08 18 */	frsp f1, f1
/* 8065F938  48 00 00 88 */	b lbl_8065F9C0
lbl_8065F93C:
/* 8065F93C  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065F940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F944  40 80 00 10 */	bge lbl_8065F954
/* 8065F948  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065F94C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065F950  48 00 00 70 */	b lbl_8065F9C0
lbl_8065F954:
/* 8065F954  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8065F958  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8065F95C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065F960  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065F964  7C 03 00 00 */	cmpw r3, r0
/* 8065F968  41 82 00 14 */	beq lbl_8065F97C
/* 8065F96C  40 80 00 40 */	bge lbl_8065F9AC
/* 8065F970  2C 03 00 00 */	cmpwi r3, 0
/* 8065F974  41 82 00 20 */	beq lbl_8065F994
/* 8065F978  48 00 00 34 */	b lbl_8065F9AC
lbl_8065F97C:
/* 8065F97C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065F980  41 82 00 0C */	beq lbl_8065F98C
/* 8065F984  38 00 00 01 */	li r0, 1
/* 8065F988  48 00 00 28 */	b lbl_8065F9B0
lbl_8065F98C:
/* 8065F98C  38 00 00 02 */	li r0, 2
/* 8065F990  48 00 00 20 */	b lbl_8065F9B0
lbl_8065F994:
/* 8065F994  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065F998  41 82 00 0C */	beq lbl_8065F9A4
/* 8065F99C  38 00 00 05 */	li r0, 5
/* 8065F9A0  48 00 00 10 */	b lbl_8065F9B0
lbl_8065F9A4:
/* 8065F9A4  38 00 00 03 */	li r0, 3
/* 8065F9A8  48 00 00 08 */	b lbl_8065F9B0
lbl_8065F9AC:
/* 8065F9AC  38 00 00 04 */	li r0, 4
lbl_8065F9B0:
/* 8065F9B0  2C 00 00 01 */	cmpwi r0, 1
/* 8065F9B4  40 82 00 0C */	bne lbl_8065F9C0
/* 8065F9B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065F9BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065F9C0:
/* 8065F9C0  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8065F9C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F9C8  40 80 00 38 */	bge lbl_8065FA00
/* 8065F9CC  88 7E 0C 10 */	lbz r3, 0xc10(r30)
/* 8065F9D0  38 03 FF FF */	addi r0, r3, -1
/* 8065F9D4  98 1E 0C 10 */	stb r0, 0xc10(r30)
/* 8065F9D8  88 1E 0C 10 */	lbz r0, 0xc10(r30)
/* 8065F9DC  7C 00 07 75 */	extsb. r0, r0
/* 8065F9E0  40 80 00 20 */	bge lbl_8065FA00
/* 8065F9E4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065F9E8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8065F9EC  38 00 00 03 */	li r0, 3
/* 8065F9F0  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065F9F4  A8 7E 0C 34 */	lha r3, 0xc34(r30)
/* 8065F9F8  38 03 E0 00 */	addi r0, r3, -8192
/* 8065F9FC  B0 1E 0C 72 */	sth r0, 0xc72(r30)
lbl_8065FA00:
/* 8065FA00  7F C3 F3 78 */	mr r3, r30
/* 8065FA04  4B FF 92 A1 */	bl checkNadeNade__7daCow_cFv
/* 8065FA08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065FA0C  41 82 04 2C */	beq lbl_8065FE38
/* 8065FA10  7F C3 F3 78 */	mr r3, r30
/* 8065FA14  38 80 00 1A */	li r4, 0x1a
/* 8065FA18  38 A0 00 02 */	li r5, 2
/* 8065FA1C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065FA20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FA24  4B FF 8D 0D */	bl setBck__7daCow_cFiUcff
/* 8065FA28  38 00 00 01 */	li r0, 1
/* 8065FA2C  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065FA30  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065FA34  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8065FA38  48 00 04 00 */	b lbl_8065FE38
lbl_8065FA3C:
/* 8065FA3C  4B FF 92 3D */	bl checkNadeNadeFinish__7daCow_cFv
/* 8065FA40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065FA44  41 82 03 F4 */	beq lbl_8065FE38
/* 8065FA48  7F C3 F3 78 */	mr r3, r30
/* 8065FA4C  38 80 00 0F */	li r4, 0xf
/* 8065FA50  38 A0 00 00 */	li r5, 0
/* 8065FA54  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065FA58  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FA5C  4B FF 8C D5 */	bl setBck__7daCow_cFiUcff
/* 8065FA60  38 00 00 02 */	li r0, 2
/* 8065FA64  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065FA68  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065FA6C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8065FA70  48 00 03 C8 */	b lbl_8065FE38
lbl_8065FA74:
/* 8065FA74  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065FA78  38 63 00 0C */	addi r3, r3, 0xc
/* 8065FA7C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8065FA80  4B CC 89 AD */	bl checkPass__12J3DFrameCtrlFf
/* 8065FA84  2C 03 00 00 */	cmpwi r3, 0
/* 8065FA88  41 82 00 2C */	beq lbl_8065FAB4
/* 8065FA8C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001F@ha */
/* 8065FA90  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0005001F@l */
/* 8065FA94  90 01 00 10 */	stw r0, 0x10(r1)
/* 8065FA98  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8065FA9C  38 81 00 10 */	addi r4, r1, 0x10
/* 8065FAA0  38 A0 FF FF */	li r5, -1
/* 8065FAA4  81 9E 05 7C */	lwz r12, 0x57c(r30)
/* 8065FAA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065FAAC  7D 89 03 A6 */	mtctr r12
/* 8065FAB0  4E 80 04 21 */	bctrl 
lbl_8065FAB4:
/* 8065FAB4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065FAB8  38 80 00 01 */	li r4, 1
/* 8065FABC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065FAC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065FAC4  40 82 00 18 */	bne lbl_8065FADC
/* 8065FAC8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065FACC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065FAD0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065FAD4  41 82 00 08 */	beq lbl_8065FADC
/* 8065FAD8  38 80 00 00 */	li r4, 0
lbl_8065FADC:
/* 8065FADC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065FAE0  41 82 03 58 */	beq lbl_8065FE38
/* 8065FAE4  7F C3 F3 78 */	mr r3, r30
/* 8065FAE8  38 80 00 1C */	li r4, 0x1c
/* 8065FAEC  38 A0 00 02 */	li r5, 2
/* 8065FAF0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065FAF4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FAF8  4B FF 8C 39 */	bl setBck__7daCow_cFiUcff
/* 8065FAFC  38 00 00 00 */	li r0, 0
/* 8065FB00  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065FB04  48 00 03 34 */	b lbl_8065FE38
lbl_8065FB08:
/* 8065FB08  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065FB0C  38 63 00 0C */	addi r3, r3, 0xc
/* 8065FB10  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 8065FB14  4B CC 89 19 */	bl checkPass__12J3DFrameCtrlFf
/* 8065FB18  2C 03 00 00 */	cmpwi r3, 0
/* 8065FB1C  41 82 03 1C */	beq lbl_8065FE38
/* 8065FB20  7F C3 F3 78 */	mr r3, r30
/* 8065FB24  38 80 00 1A */	li r4, 0x1a
/* 8065FB28  38 A0 00 02 */	li r5, 2
/* 8065FB2C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065FB30  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FB34  4B FF 8B FD */	bl setBck__7daCow_cFiUcff
/* 8065FB38  38 00 00 04 */	li r0, 4
/* 8065FB3C  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065FB40  48 00 02 F8 */	b lbl_8065FE38
lbl_8065FB44:
/* 8065FB44  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8065FB48  60 00 01 00 */	ori r0, r0, 0x100
/* 8065FB4C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8065FB50  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8065FB54  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8065FB58  41 82 02 E0 */	beq lbl_8065FE38
/* 8065FB5C  4B 9B A1 21 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8065FB60  48 00 02 D8 */	b lbl_8065FE38
lbl_8065FB64:
/* 8065FB64  38 80 00 18 */	li r4, 0x18
/* 8065FB68  38 A0 00 00 */	li r5, 0
/* 8065FB6C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8065FB70  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FB74  4B FF 8B BD */	bl setBck__7daCow_cFiUcff
/* 8065FB78  38 00 00 06 */	li r0, 6
/* 8065FB7C  98 1E 0C 61 */	stb r0, 0xc61(r30)
lbl_8065FB80:
/* 8065FB80  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065FB84  38 80 00 01 */	li r4, 1
/* 8065FB88  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065FB8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065FB90  40 82 00 18 */	bne lbl_8065FBA8
/* 8065FB94  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065FB98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065FB9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065FBA0  41 82 00 08 */	beq lbl_8065FBA8
/* 8065FBA4  38 80 00 00 */	li r4, 0
lbl_8065FBA8:
/* 8065FBA8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065FBAC  41 82 02 8C */	beq lbl_8065FE38
/* 8065FBB0  88 7E 0C 10 */	lbz r3, 0xc10(r30)
/* 8065FBB4  7C 60 07 75 */	extsb. r0, r3
/* 8065FBB8  40 80 00 28 */	bge lbl_8065FBE0
/* 8065FBBC  7F C3 F3 78 */	mr r3, r30
/* 8065FBC0  38 80 00 1C */	li r4, 0x1c
/* 8065FBC4  38 A0 00 02 */	li r5, 2
/* 8065FBC8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065FBCC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FBD0  4B FF 8B 61 */	bl setBck__7daCow_cFiUcff
/* 8065FBD4  38 00 00 03 */	li r0, 3
/* 8065FBD8  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065FBDC  48 00 02 5C */	b lbl_8065FE38
lbl_8065FBE0:
/* 8065FBE0  7C 60 07 74 */	extsb r0, r3
/* 8065FBE4  2C 00 00 02 */	cmpwi r0, 2
/* 8065FBE8  40 80 00 28 */	bge lbl_8065FC10
/* 8065FBEC  7F C3 F3 78 */	mr r3, r30
/* 8065FBF0  38 80 00 1C */	li r4, 0x1c
/* 8065FBF4  38 A0 00 02 */	li r5, 2
/* 8065FBF8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065FBFC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FC00  4B FF 8B 31 */	bl setBck__7daCow_cFiUcff
/* 8065FC04  38 00 00 00 */	li r0, 0
/* 8065FC08  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065FC0C  48 00 02 2C */	b lbl_8065FE38
lbl_8065FC10:
/* 8065FC10  7F C3 F3 78 */	mr r3, r30
/* 8065FC14  38 80 00 01 */	li r4, 1
/* 8065FC18  4B FF 89 B5 */	bl calcRunAnime__7daCow_cFi
/* 8065FC1C  38 00 00 07 */	li r0, 7
/* 8065FC20  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065FC24  38 00 00 1E */	li r0, 0x1e
/* 8065FC28  90 1E 0C 90 */	stw r0, 0xc90(r30)
/* 8065FC2C  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8065FC30  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8065FC34  48 00 02 04 */	b lbl_8065FE38
lbl_8065FC38:
/* 8065FC38  80 7E 0C 0C */	lwz r3, 0xc0c(r30)
/* 8065FC3C  88 9E 0C 10 */	lbz r4, 0xc10(r30)
/* 8065FC40  7C 84 07 74 */	extsb r4, r4
/* 8065FC44  4B 9F 1B 6D */	bl dPath_GetPnt__FPC5dPathi
/* 8065FC48  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065FC4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8065FC50  C0 03 00 08 */	lfs f0, 8(r3)
/* 8065FC54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8065FC58  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8065FC5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8065FC60  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8065FC64  38 81 00 14 */	addi r4, r1, 0x14
/* 8065FC68  4B C1 0F 9D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065FC6C  7C 7D 1B 78 */	mr r29, r3
/* 8065FC70  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8065FC74  7F A4 EB 78 */	mr r4, r29
/* 8065FC78  38 A0 00 10 */	li r5, 0x10
/* 8065FC7C  38 C0 01 00 */	li r6, 0x100
/* 8065FC80  38 E0 00 80 */	li r7, 0x80
/* 8065FC84  4B C1 08 BD */	bl cLib_addCalcAngleS__FPsssss
/* 8065FC88  88 1E 0C 10 */	lbz r0, 0xc10(r30)
/* 8065FC8C  7C 00 07 74 */	extsb r0, r0
/* 8065FC90  2C 00 00 02 */	cmpwi r0, 2
/* 8065FC94  40 80 00 18 */	bge lbl_8065FCAC
/* 8065FC98  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8065FC9C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065FCA0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FCA4  4B C1 0A 9D */	bl cLib_chaseF__FPfff
/* 8065FCA8  48 00 00 14 */	b lbl_8065FCBC
lbl_8065FCAC:
/* 8065FCAC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8065FCB0  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8065FCB4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FCB8  4B C1 0A 89 */	bl cLib_chaseF__FPfff
lbl_8065FCBC:
/* 8065FCBC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8065FCC0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8065FCC4  38 A0 00 08 */	li r5, 8
/* 8065FCC8  38 C0 01 00 */	li r6, 0x100
/* 8065FCCC  38 E0 00 80 */	li r7, 0x80
/* 8065FCD0  4B C1 08 71 */	bl cLib_addCalcAngleS__FPsssss
/* 8065FCD4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8065FCD8  B0 1E 0C 34 */	sth r0, 0xc34(r30)
/* 8065FCDC  7F C3 F3 78 */	mr r3, r30
/* 8065FCE0  7F A4 EB 78 */	mr r4, r29
/* 8065FCE4  4B FF 91 B5 */	bl setBodyAngle__7daCow_cFs
/* 8065FCE8  7F C3 F3 78 */	mr r3, r30
/* 8065FCEC  38 80 00 00 */	li r4, 0
/* 8065FCF0  4B FF 88 DD */	bl calcRunAnime__7daCow_cFi
/* 8065FCF4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8065FCF8  38 81 00 14 */	addi r4, r1, 0x14
/* 8065FCFC  4B CE 76 A1 */	bl PSVECSquareDistance
/* 8065FD00  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065FD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065FD08  40 81 00 58 */	ble lbl_8065FD60
/* 8065FD0C  FC 00 08 34 */	frsqrte f0, f1
/* 8065FD10  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065FD14  FC 44 00 32 */	fmul f2, f4, f0
/* 8065FD18  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065FD1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8065FD20  FC 01 00 32 */	fmul f0, f1, f0
/* 8065FD24  FC 03 00 28 */	fsub f0, f3, f0
/* 8065FD28  FC 02 00 32 */	fmul f0, f2, f0
/* 8065FD2C  FC 44 00 32 */	fmul f2, f4, f0
/* 8065FD30  FC 00 00 32 */	fmul f0, f0, f0
/* 8065FD34  FC 01 00 32 */	fmul f0, f1, f0
/* 8065FD38  FC 03 00 28 */	fsub f0, f3, f0
/* 8065FD3C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065FD40  FC 44 00 32 */	fmul f2, f4, f0
/* 8065FD44  FC 00 00 32 */	fmul f0, f0, f0
/* 8065FD48  FC 01 00 32 */	fmul f0, f1, f0
/* 8065FD4C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065FD50  FC 02 00 32 */	fmul f0, f2, f0
/* 8065FD54  FC 21 00 32 */	fmul f1, f1, f0
/* 8065FD58  FC 20 08 18 */	frsp f1, f1
/* 8065FD5C  48 00 00 88 */	b lbl_8065FDE4
lbl_8065FD60:
/* 8065FD60  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065FD64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065FD68  40 80 00 10 */	bge lbl_8065FD78
/* 8065FD6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065FD70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065FD74  48 00 00 70 */	b lbl_8065FDE4
lbl_8065FD78:
/* 8065FD78  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065FD7C  80 81 00 08 */	lwz r4, 8(r1)
/* 8065FD80  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065FD84  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065FD88  7C 03 00 00 */	cmpw r3, r0
/* 8065FD8C  41 82 00 14 */	beq lbl_8065FDA0
/* 8065FD90  40 80 00 40 */	bge lbl_8065FDD0
/* 8065FD94  2C 03 00 00 */	cmpwi r3, 0
/* 8065FD98  41 82 00 20 */	beq lbl_8065FDB8
/* 8065FD9C  48 00 00 34 */	b lbl_8065FDD0
lbl_8065FDA0:
/* 8065FDA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065FDA4  41 82 00 0C */	beq lbl_8065FDB0
/* 8065FDA8  38 00 00 01 */	li r0, 1
/* 8065FDAC  48 00 00 28 */	b lbl_8065FDD4
lbl_8065FDB0:
/* 8065FDB0  38 00 00 02 */	li r0, 2
/* 8065FDB4  48 00 00 20 */	b lbl_8065FDD4
lbl_8065FDB8:
/* 8065FDB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065FDBC  41 82 00 0C */	beq lbl_8065FDC8
/* 8065FDC0  38 00 00 05 */	li r0, 5
/* 8065FDC4  48 00 00 10 */	b lbl_8065FDD4
lbl_8065FDC8:
/* 8065FDC8  38 00 00 03 */	li r0, 3
/* 8065FDCC  48 00 00 08 */	b lbl_8065FDD4
lbl_8065FDD0:
/* 8065FDD0  38 00 00 04 */	li r0, 4
lbl_8065FDD4:
/* 8065FDD4  2C 00 00 01 */	cmpwi r0, 1
/* 8065FDD8  40 82 00 0C */	bne lbl_8065FDE4
/* 8065FDDC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065FDE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065FDE4:
/* 8065FDE4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8065FDE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065FDEC  40 80 00 4C */	bge lbl_8065FE38
/* 8065FDF0  88 7E 0C 10 */	lbz r3, 0xc10(r30)
/* 8065FDF4  38 03 FF FF */	addi r0, r3, -1
/* 8065FDF8  98 1E 0C 10 */	stb r0, 0xc10(r30)
/* 8065FDFC  88 1E 0C 10 */	lbz r0, 0xc10(r30)
/* 8065FE00  7C 00 07 74 */	extsb r0, r0
/* 8065FE04  2C 00 00 01 */	cmpwi r0, 1
/* 8065FE08  40 80 00 30 */	bge lbl_8065FE38
/* 8065FE0C  80 1E 0C 90 */	lwz r0, 0xc90(r30)
/* 8065FE10  2C 00 00 00 */	cmpwi r0, 0
/* 8065FE14  40 82 00 24 */	bne lbl_8065FE38
/* 8065FE18  7F C3 F3 78 */	mr r3, r30
/* 8065FE1C  38 80 00 1C */	li r4, 0x1c
/* 8065FE20  38 A0 00 02 */	li r5, 2
/* 8065FE24  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065FE28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065FE2C  4B FF 89 05 */	bl setBck__7daCow_cFiUcff
/* 8065FE30  38 00 00 00 */	li r0, 0
/* 8065FE34  98 1E 0C 61 */	stb r0, 0xc61(r30)
lbl_8065FE38:
/* 8065FE38  39 61 00 30 */	addi r11, r1, 0x30
/* 8065FE3C  4B D0 23 ED */	bl _restgpr_29
/* 8065FE40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8065FE44  7C 08 03 A6 */	mtlr r0
/* 8065FE48  38 21 00 30 */	addi r1, r1, 0x30
/* 8065FE4C  4E 80 00 20 */	blr 
