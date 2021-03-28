lbl_80C1FD5C:
/* 80C1FD5C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C1FD60  7C 08 02 A6 */	mflr r0
/* 80C1FD64  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C1FD68  39 61 00 70 */	addi r11, r1, 0x70
/* 80C1FD6C  4B 74 24 68 */	b _savegpr_27
/* 80C1FD70  7C 9C 23 78 */	mr r28, r4
/* 80C1FD74  7C BB 2B 78 */	mr r27, r5
/* 80C1FD78  3C 60 80 C2 */	lis r3, lit_3675@ha
/* 80C1FD7C  3B C3 07 8C */	addi r30, r3, lit_3675@l
/* 80C1FD80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1FD84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C1FD88  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80C1FD8C  7F A3 EB 78 */	mr r3, r29
/* 80C1FD90  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C1FD94  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 80C1FD98  7D 89 03 A6 */	mtctr r12
/* 80C1FD9C  4E 80 04 21 */	bctrl 
/* 80C1FDA0  7C 7F 1B 78 */	mr r31, r3
/* 80C1FDA4  A8 1B 00 08 */	lha r0, 8(r27)
/* 80C1FDA8  7C 00 00 34 */	cntlzw r0, r0
/* 80C1FDAC  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80C1FDB0  28 00 00 FD */	cmplwi r0, 0xfd
/* 80C1FDB4  40 82 00 20 */	bne lbl_80C1FDD4
/* 80C1FDB8  38 00 01 00 */	li r0, 0x100
/* 80C1FDBC  B0 1C 05 F4 */	sth r0, 0x5f4(r28)
/* 80C1FDC0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80C1FDC4  D0 1C 05 A4 */	stfs f0, 0x5a4(r28)
/* 80C1FDC8  38 00 05 00 */	li r0, 0x500
/* 80C1FDCC  B0 1C 05 AC */	sth r0, 0x5ac(r28)
/* 80C1FDD0  48 00 00 28 */	b lbl_80C1FDF8
lbl_80C1FDD4:
/* 80C1FDD4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C1FDD8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C1FDDC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C1FDE0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C1FDE4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C1FDE8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C1FDEC  7F 83 E3 78 */	mr r3, r28
/* 80C1FDF0  38 81 00 48 */	addi r4, r1, 0x48
/* 80C1FDF4  4B FF FC 6D */	bl Check_RideOn__12daObjIce_l_cF4cXyz
lbl_80C1FDF8:
/* 80C1FDF8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C1FDFC  28 1F 00 00 */	cmplwi r31, 0
/* 80C1FE00  41 82 01 78 */	beq lbl_80C1FF78
/* 80C1FE04  28 03 00 00 */	cmplwi r3, 0
/* 80C1FE08  41 82 01 70 */	beq lbl_80C1FF78
/* 80C1FE0C  C0 43 00 08 */	lfs f2, 8(r3)
/* 80C1FE10  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C1FE14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C1FE18  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C1FE1C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C1FE20  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C1FE24  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C1FE28  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C1FE2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C1FE30  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C1FE34  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C1FE38  38 61 00 0C */	addi r3, r1, 0xc
/* 80C1FE3C  38 81 00 18 */	addi r4, r1, 0x18
/* 80C1FE40  4B 72 75 5C */	b PSVECSquareDistance
/* 80C1FE44  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C1FE48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1FE4C  40 81 00 58 */	ble lbl_80C1FEA4
/* 80C1FE50  FC 00 08 34 */	frsqrte f0, f1
/* 80C1FE54  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80C1FE58  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1FE5C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80C1FE60  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1FE64  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1FE68  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1FE6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1FE70  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1FE74  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1FE78  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1FE7C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1FE80  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1FE84  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1FE88  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1FE8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1FE90  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1FE94  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1FE98  FC 21 00 32 */	fmul f1, f1, f0
/* 80C1FE9C  FC 20 08 18 */	frsp f1, f1
/* 80C1FEA0  48 00 00 88 */	b lbl_80C1FF28
lbl_80C1FEA4:
/* 80C1FEA4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80C1FEA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1FEAC  40 80 00 10 */	bge lbl_80C1FEBC
/* 80C1FEB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C1FEB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C1FEB8  48 00 00 70 */	b lbl_80C1FF28
lbl_80C1FEBC:
/* 80C1FEBC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C1FEC0  80 81 00 08 */	lwz r4, 8(r1)
/* 80C1FEC4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C1FEC8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C1FECC  7C 03 00 00 */	cmpw r3, r0
/* 80C1FED0  41 82 00 14 */	beq lbl_80C1FEE4
/* 80C1FED4  40 80 00 40 */	bge lbl_80C1FF14
/* 80C1FED8  2C 03 00 00 */	cmpwi r3, 0
/* 80C1FEDC  41 82 00 20 */	beq lbl_80C1FEFC
/* 80C1FEE0  48 00 00 34 */	b lbl_80C1FF14
lbl_80C1FEE4:
/* 80C1FEE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C1FEE8  41 82 00 0C */	beq lbl_80C1FEF4
/* 80C1FEEC  38 00 00 01 */	li r0, 1
/* 80C1FEF0  48 00 00 28 */	b lbl_80C1FF18
lbl_80C1FEF4:
/* 80C1FEF4  38 00 00 02 */	li r0, 2
/* 80C1FEF8  48 00 00 20 */	b lbl_80C1FF18
lbl_80C1FEFC:
/* 80C1FEFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C1FF00  41 82 00 0C */	beq lbl_80C1FF0C
/* 80C1FF04  38 00 00 05 */	li r0, 5
/* 80C1FF08  48 00 00 10 */	b lbl_80C1FF18
lbl_80C1FF0C:
/* 80C1FF0C  38 00 00 03 */	li r0, 3
/* 80C1FF10  48 00 00 08 */	b lbl_80C1FF18
lbl_80C1FF14:
/* 80C1FF14  38 00 00 04 */	li r0, 4
lbl_80C1FF18:
/* 80C1FF18  2C 00 00 01 */	cmpwi r0, 1
/* 80C1FF1C  40 82 00 0C */	bne lbl_80C1FF28
/* 80C1FF20  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C1FF24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C1FF28:
/* 80C1FF28  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80C1FF2C  C0 1C 05 B4 */	lfs f0, 0x5b4(r28)
/* 80C1FF30  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C1FF34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1FF38  40 80 00 40 */	bge lbl_80C1FF78
/* 80C1FF3C  38 00 04 00 */	li r0, 0x400
/* 80C1FF40  B0 1C 05 F4 */	sth r0, 0x5f4(r28)
/* 80C1FF44  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C1FF48  D0 1C 05 A4 */	stfs f0, 0x5a4(r28)
/* 80C1FF4C  38 00 07 00 */	li r0, 0x700
/* 80C1FF50  B0 1C 05 AC */	sth r0, 0x5ac(r28)
/* 80C1FF54  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C1FF58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C1FF5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C1FF60  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C1FF64  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C1FF68  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C1FF6C  7F 83 E3 78 */	mr r3, r28
/* 80C1FF70  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C1FF74  4B FF FA ED */	bl Check_RideOn__12daObjIce_l_cF4cXyz
lbl_80C1FF78:
/* 80C1FF78  7F A3 EB 78 */	mr r3, r29
/* 80C1FF7C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C1FF80  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80C1FF84  7D 89 03 A6 */	mtctr r12
/* 80C1FF88  4E 80 04 21 */	bctrl 
/* 80C1FF8C  2C 03 00 00 */	cmpwi r3, 0
/* 80C1FF90  41 82 00 38 */	beq lbl_80C1FFC8
/* 80C1FF94  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C1FF98  D0 1C 05 A4 */	stfs f0, 0x5a4(r28)
/* 80C1FF9C  38 00 02 00 */	li r0, 0x200
/* 80C1FFA0  B0 1C 05 AC */	sth r0, 0x5ac(r28)
/* 80C1FFA4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C1FFA8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C1FFAC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C1FFB0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C1FFB4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C1FFB8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C1FFBC  7F 83 E3 78 */	mr r3, r28
/* 80C1FFC0  38 81 00 30 */	addi r4, r1, 0x30
/* 80C1FFC4  4B FF FA 9D */	bl Check_RideOn__12daObjIce_l_cF4cXyz
lbl_80C1FFC8:
/* 80C1FFC8  88 1C 05 B1 */	lbz r0, 0x5b1(r28)
/* 80C1FFCC  28 00 00 FF */	cmplwi r0, 0xff
/* 80C1FFD0  40 82 00 4C */	bne lbl_80C2001C
/* 80C1FFD4  A8 1B 00 08 */	lha r0, 8(r27)
/* 80C1FFD8  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C1FFDC  40 82 00 40 */	bne lbl_80C2001C
/* 80C1FFE0  38 00 03 00 */	li r0, 0x300
/* 80C1FFE4  B0 1C 05 F4 */	sth r0, 0x5f4(r28)
/* 80C1FFE8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C1FFEC  D0 1C 05 A4 */	stfs f0, 0x5a4(r28)
/* 80C1FFF0  38 00 10 00 */	li r0, 0x1000
/* 80C1FFF4  B0 1C 05 AC */	sth r0, 0x5ac(r28)
/* 80C1FFF8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C1FFFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C20000  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C20004  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C20008  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C2000C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C20010  7F 83 E3 78 */	mr r3, r28
/* 80C20014  38 81 00 24 */	addi r4, r1, 0x24
/* 80C20018  4B FF FA 49 */	bl Check_RideOn__12daObjIce_l_cF4cXyz
lbl_80C2001C:
/* 80C2001C  39 61 00 70 */	addi r11, r1, 0x70
/* 80C20020  4B 74 22 00 */	b _restgpr_27
/* 80C20024  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C20028  7C 08 03 A6 */	mtlr r0
/* 80C2002C  38 21 00 70 */	addi r1, r1, 0x70
/* 80C20030  4E 80 00 20 */	blr 
