lbl_8063FAB4:
/* 8063FAB4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8063FAB8  7C 08 02 A6 */	mflr r0
/* 8063FABC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8063FAC0  39 61 00 80 */	addi r11, r1, 0x80
/* 8063FAC4  4B D2 27 0C */	b _savegpr_26
/* 8063FAC8  7C 7C 1B 78 */	mr r28, r3
/* 8063FACC  7C 9D 23 78 */	mr r29, r4
/* 8063FAD0  3C 60 80 65 */	lis r3, lit_3757@ha
/* 8063FAD4  3B E3 EB 1C */	addi r31, r3, lit_3757@l
/* 8063FAD8  2C 1D 00 02 */	cmpwi r29, 2
/* 8063FADC  40 82 00 0C */	bne lbl_8063FAE8
/* 8063FAE0  38 60 00 00 */	li r3, 0
/* 8063FAE4  48 00 04 70 */	b lbl_8063FF54
lbl_8063FAE8:
/* 8063FAE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063FAEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063FAF0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8063FAF4  3C 60 80 64 */	lis r3, s_obj_sub__FPvPv@ha
/* 8063FAF8  38 63 F9 70 */	addi r3, r3, s_obj_sub__FPvPv@l
/* 8063FAFC  7F 84 E3 78 */	mr r4, r28
/* 8063FB00  4B 9E 18 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8063FB04  28 03 00 00 */	cmplwi r3, 0
/* 8063FB08  41 82 00 0C */	beq lbl_8063FB14
/* 8063FB0C  38 60 00 01 */	li r3, 1
/* 8063FB10  48 00 04 44 */	b lbl_8063FF54
lbl_8063FB14:
/* 8063FB14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063FB18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063FB1C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8063FB20  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8063FB24  41 82 01 50 */	beq lbl_8063FC74
/* 8063FB28  7F C3 F3 78 */	mr r3, r30
/* 8063FB2C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8063FB30  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 8063FB34  7D 89 03 A6 */	mtctr r12
/* 8063FB38  4E 80 04 21 */	bctrl 
/* 8063FB3C  28 03 00 00 */	cmplwi r3, 0
/* 8063FB40  41 82 01 34 */	beq lbl_8063FC74
/* 8063FB44  C0 43 00 08 */	lfs f2, 8(r3)
/* 8063FB48  C0 03 00 00 */	lfs f0, 0(r3)
/* 8063FB4C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8063FB50  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8063FB54  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8063FB58  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8063FB5C  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8063FB60  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8063FB64  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8063FB68  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8063FB6C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8063FB70  38 61 00 44 */	addi r3, r1, 0x44
/* 8063FB74  38 81 00 50 */	addi r4, r1, 0x50
/* 8063FB78  4B D0 78 24 */	b PSVECSquareDistance
/* 8063FB7C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8063FB80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FB84  40 81 00 58 */	ble lbl_8063FBDC
/* 8063FB88  FC 00 08 34 */	frsqrte f0, f1
/* 8063FB8C  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 8063FB90  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FB94  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 8063FB98  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FB9C  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FBA0  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FBA4  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FBA8  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FBAC  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FBB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FBB4  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FBB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FBBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FBC0  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FBC4  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FBC8  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FBCC  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FBD0  FC 21 00 32 */	fmul f1, f1, f0
/* 8063FBD4  FC 20 08 18 */	frsp f1, f1
/* 8063FBD8  48 00 00 88 */	b lbl_8063FC60
lbl_8063FBDC:
/* 8063FBDC  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 8063FBE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FBE4  40 80 00 10 */	bge lbl_8063FBF4
/* 8063FBE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063FBEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063FBF0  48 00 00 70 */	b lbl_8063FC60
lbl_8063FBF4:
/* 8063FBF4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8063FBF8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8063FBFC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063FC00  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063FC04  7C 03 00 00 */	cmpw r3, r0
/* 8063FC08  41 82 00 14 */	beq lbl_8063FC1C
/* 8063FC0C  40 80 00 40 */	bge lbl_8063FC4C
/* 8063FC10  2C 03 00 00 */	cmpwi r3, 0
/* 8063FC14  41 82 00 20 */	beq lbl_8063FC34
/* 8063FC18  48 00 00 34 */	b lbl_8063FC4C
lbl_8063FC1C:
/* 8063FC1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063FC20  41 82 00 0C */	beq lbl_8063FC2C
/* 8063FC24  38 00 00 01 */	li r0, 1
/* 8063FC28  48 00 00 28 */	b lbl_8063FC50
lbl_8063FC2C:
/* 8063FC2C  38 00 00 02 */	li r0, 2
/* 8063FC30  48 00 00 20 */	b lbl_8063FC50
lbl_8063FC34:
/* 8063FC34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063FC38  41 82 00 0C */	beq lbl_8063FC44
/* 8063FC3C  38 00 00 05 */	li r0, 5
/* 8063FC40  48 00 00 10 */	b lbl_8063FC50
lbl_8063FC44:
/* 8063FC44  38 00 00 03 */	li r0, 3
/* 8063FC48  48 00 00 08 */	b lbl_8063FC50
lbl_8063FC4C:
/* 8063FC4C  38 00 00 04 */	li r0, 4
lbl_8063FC50:
/* 8063FC50  2C 00 00 01 */	cmpwi r0, 1
/* 8063FC54  40 82 00 0C */	bne lbl_8063FC60
/* 8063FC58  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063FC5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063FC60:
/* 8063FC60  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8063FC64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FC68  40 80 00 0C */	bge lbl_8063FC74
/* 8063FC6C  38 60 00 01 */	li r3, 1
/* 8063FC70  48 00 02 E4 */	b lbl_8063FF54
lbl_8063FC74:
/* 8063FC74  7F C3 F3 78 */	mr r3, r30
/* 8063FC78  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8063FC7C  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 8063FC80  7D 89 03 A6 */	mtctr r12
/* 8063FC84  4E 80 04 21 */	bctrl 
/* 8063FC88  7C 7B 1B 79 */	or. r27, r3, r3
/* 8063FC8C  41 82 01 7C */	beq lbl_8063FE08
/* 8063FC90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063FC94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063FC98  83 43 5D B4 */	lwz r26, 0x5db4(r3)
/* 8063FC9C  7F 43 D3 78 */	mr r3, r26
/* 8063FCA0  4B AD 27 D4 */	b checkIronBallThrowMode__9daAlink_cCFv
/* 8063FCA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063FCA8  40 82 00 14 */	bne lbl_8063FCBC
/* 8063FCAC  7F 43 D3 78 */	mr r3, r26
/* 8063FCB0  4B AD 28 04 */	b checkIronBallThrowReturnMode__9daAlink_cCFv
/* 8063FCB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063FCB8  41 82 01 50 */	beq lbl_8063FE08
lbl_8063FCBC:
/* 8063FCBC  7F C3 F3 78 */	mr r3, r30
/* 8063FCC0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8063FCC4  81 8C 01 44 */	lwz r12, 0x144(r12)
/* 8063FCC8  7D 89 03 A6 */	mtctr r12
/* 8063FCCC  4E 80 04 21 */	bctrl 
/* 8063FCD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063FCD4  40 82 01 34 */	bne lbl_8063FE08
/* 8063FCD8  C0 5B 00 08 */	lfs f2, 8(r27)
/* 8063FCDC  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8063FCE0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8063FCE4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8063FCE8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8063FCEC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8063FCF0  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8063FCF4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8063FCF8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8063FCFC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8063FD00  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8063FD04  38 61 00 2C */	addi r3, r1, 0x2c
/* 8063FD08  38 81 00 38 */	addi r4, r1, 0x38
/* 8063FD0C  4B D0 76 90 */	b PSVECSquareDistance
/* 8063FD10  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8063FD14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FD18  40 81 00 58 */	ble lbl_8063FD70
/* 8063FD1C  FC 00 08 34 */	frsqrte f0, f1
/* 8063FD20  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 8063FD24  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FD28  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 8063FD2C  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FD30  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FD34  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FD38  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FD3C  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FD40  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FD44  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FD48  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FD4C  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FD50  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FD54  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FD58  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FD5C  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FD60  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FD64  FC 21 00 32 */	fmul f1, f1, f0
/* 8063FD68  FC 20 08 18 */	frsp f1, f1
/* 8063FD6C  48 00 00 88 */	b lbl_8063FDF4
lbl_8063FD70:
/* 8063FD70  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 8063FD74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FD78  40 80 00 10 */	bge lbl_8063FD88
/* 8063FD7C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063FD80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063FD84  48 00 00 70 */	b lbl_8063FDF4
lbl_8063FD88:
/* 8063FD88  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8063FD8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8063FD90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063FD94  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063FD98  7C 03 00 00 */	cmpw r3, r0
/* 8063FD9C  41 82 00 14 */	beq lbl_8063FDB0
/* 8063FDA0  40 80 00 40 */	bge lbl_8063FDE0
/* 8063FDA4  2C 03 00 00 */	cmpwi r3, 0
/* 8063FDA8  41 82 00 20 */	beq lbl_8063FDC8
/* 8063FDAC  48 00 00 34 */	b lbl_8063FDE0
lbl_8063FDB0:
/* 8063FDB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063FDB4  41 82 00 0C */	beq lbl_8063FDC0
/* 8063FDB8  38 00 00 01 */	li r0, 1
/* 8063FDBC  48 00 00 28 */	b lbl_8063FDE4
lbl_8063FDC0:
/* 8063FDC0  38 00 00 02 */	li r0, 2
/* 8063FDC4  48 00 00 20 */	b lbl_8063FDE4
lbl_8063FDC8:
/* 8063FDC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063FDCC  41 82 00 0C */	beq lbl_8063FDD8
/* 8063FDD0  38 00 00 05 */	li r0, 5
/* 8063FDD4  48 00 00 10 */	b lbl_8063FDE4
lbl_8063FDD8:
/* 8063FDD8  38 00 00 03 */	li r0, 3
/* 8063FDDC  48 00 00 08 */	b lbl_8063FDE4
lbl_8063FDE0:
/* 8063FDE0  38 00 00 04 */	li r0, 4
lbl_8063FDE4:
/* 8063FDE4  2C 00 00 01 */	cmpwi r0, 1
/* 8063FDE8  40 82 00 0C */	bne lbl_8063FDF4
/* 8063FDEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063FDF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063FDF4:
/* 8063FDF4  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8063FDF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FDFC  40 80 00 0C */	bge lbl_8063FE08
/* 8063FE00  38 60 00 01 */	li r3, 1
/* 8063FE04  48 00 01 50 */	b lbl_8063FF54
lbl_8063FE08:
/* 8063FE08  2C 1D 00 00 */	cmpwi r29, 0
/* 8063FE0C  40 82 01 44 */	bne lbl_8063FF50
/* 8063FE10  4B B1 FA C0 */	b getThrowBoomerangActor__9daPy_py_cFv
/* 8063FE14  28 03 00 00 */	cmplwi r3, 0
/* 8063FE18  41 82 01 38 */	beq lbl_8063FF50
/* 8063FE1C  4B B1 FA B4 */	b getThrowBoomerangActor__9daPy_py_cFv
/* 8063FE20  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8063FE24  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8063FE28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8063FE2C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8063FE30  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8063FE34  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8063FE38  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8063FE3C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8063FE40  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8063FE44  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8063FE48  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8063FE4C  38 61 00 14 */	addi r3, r1, 0x14
/* 8063FE50  38 81 00 20 */	addi r4, r1, 0x20
/* 8063FE54  4B D0 75 48 */	b PSVECSquareDistance
/* 8063FE58  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8063FE5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FE60  40 81 00 58 */	ble lbl_8063FEB8
/* 8063FE64  FC 00 08 34 */	frsqrte f0, f1
/* 8063FE68  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 8063FE6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FE70  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 8063FE74  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FE78  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FE7C  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FE80  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FE84  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FE88  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FE8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FE90  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FE94  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FE98  FC 44 00 32 */	fmul f2, f4, f0
/* 8063FE9C  FC 00 00 32 */	fmul f0, f0, f0
/* 8063FEA0  FC 01 00 32 */	fmul f0, f1, f0
/* 8063FEA4  FC 03 00 28 */	fsub f0, f3, f0
/* 8063FEA8  FC 02 00 32 */	fmul f0, f2, f0
/* 8063FEAC  FC 21 00 32 */	fmul f1, f1, f0
/* 8063FEB0  FC 20 08 18 */	frsp f1, f1
/* 8063FEB4  48 00 00 88 */	b lbl_8063FF3C
lbl_8063FEB8:
/* 8063FEB8  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 8063FEBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FEC0  40 80 00 10 */	bge lbl_8063FED0
/* 8063FEC4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063FEC8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063FECC  48 00 00 70 */	b lbl_8063FF3C
lbl_8063FED0:
/* 8063FED0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8063FED4  80 81 00 08 */	lwz r4, 8(r1)
/* 8063FED8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063FEDC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063FEE0  7C 03 00 00 */	cmpw r3, r0
/* 8063FEE4  41 82 00 14 */	beq lbl_8063FEF8
/* 8063FEE8  40 80 00 40 */	bge lbl_8063FF28
/* 8063FEEC  2C 03 00 00 */	cmpwi r3, 0
/* 8063FEF0  41 82 00 20 */	beq lbl_8063FF10
/* 8063FEF4  48 00 00 34 */	b lbl_8063FF28
lbl_8063FEF8:
/* 8063FEF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063FEFC  41 82 00 0C */	beq lbl_8063FF08
/* 8063FF00  38 00 00 01 */	li r0, 1
/* 8063FF04  48 00 00 28 */	b lbl_8063FF2C
lbl_8063FF08:
/* 8063FF08  38 00 00 02 */	li r0, 2
/* 8063FF0C  48 00 00 20 */	b lbl_8063FF2C
lbl_8063FF10:
/* 8063FF10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063FF14  41 82 00 0C */	beq lbl_8063FF20
/* 8063FF18  38 00 00 05 */	li r0, 5
/* 8063FF1C  48 00 00 10 */	b lbl_8063FF2C
lbl_8063FF20:
/* 8063FF20  38 00 00 03 */	li r0, 3
/* 8063FF24  48 00 00 08 */	b lbl_8063FF2C
lbl_8063FF28:
/* 8063FF28  38 00 00 04 */	li r0, 4
lbl_8063FF2C:
/* 8063FF2C  2C 00 00 01 */	cmpwi r0, 1
/* 8063FF30  40 82 00 0C */	bne lbl_8063FF3C
/* 8063FF34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063FF38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063FF3C:
/* 8063FF3C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8063FF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063FF44  40 80 00 0C */	bge lbl_8063FF50
/* 8063FF48  38 60 00 01 */	li r3, 1
/* 8063FF4C  48 00 00 08 */	b lbl_8063FF54
lbl_8063FF50:
/* 8063FF50  38 60 00 00 */	li r3, 0
lbl_8063FF54:
/* 8063FF54  39 61 00 80 */	addi r11, r1, 0x80
/* 8063FF58  4B D2 22 C4 */	b _restgpr_26
/* 8063FF5C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8063FF60  7C 08 03 A6 */	mtlr r0
/* 8063FF64  38 21 00 80 */	addi r1, r1, 0x80
/* 8063FF68  4E 80 00 20 */	blr 
