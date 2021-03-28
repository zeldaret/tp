lbl_8048FC70:
/* 8048FC70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048FC74  7C 08 02 A6 */	mflr r0
/* 8048FC78  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048FC7C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8048FC80  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8048FC84  7C 7F 1B 78 */	mr r31, r3
/* 8048FC88  3C 60 80 49 */	lis r3, m__17daTag_Msg_Param_c@ha
/* 8048FC8C  3B C3 01 78 */	addi r30, r3, m__17daTag_Msg_Param_c@l
/* 8048FC90  38 61 00 18 */	addi r3, r1, 0x18
/* 8048FC94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8048FC98  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8048FC9C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8048FCA0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8048FCA4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8048FCA8  4B DD 6E 8C */	b __mi__4cXyzCFRC3Vec
/* 8048FCAC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8048FCB0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8048FCB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8048FCB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8048FCBC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8048FCC0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8048FCC4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8048FCC8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8048FCCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8048FCD0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8048FCD4  38 61 00 0C */	addi r3, r1, 0xc
/* 8048FCD8  4B EB 74 60 */	b PSVECSquareMag
/* 8048FCDC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8048FCE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048FCE4  40 81 00 58 */	ble lbl_8048FD3C
/* 8048FCE8  FC 00 08 34 */	frsqrte f0, f1
/* 8048FCEC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8048FCF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8048FCF4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8048FCF8  FC 00 00 32 */	fmul f0, f0, f0
/* 8048FCFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8048FD00  FC 03 00 28 */	fsub f0, f3, f0
/* 8048FD04  FC 02 00 32 */	fmul f0, f2, f0
/* 8048FD08  FC 44 00 32 */	fmul f2, f4, f0
/* 8048FD0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8048FD10  FC 01 00 32 */	fmul f0, f1, f0
/* 8048FD14  FC 03 00 28 */	fsub f0, f3, f0
/* 8048FD18  FC 02 00 32 */	fmul f0, f2, f0
/* 8048FD1C  FC 44 00 32 */	fmul f2, f4, f0
/* 8048FD20  FC 00 00 32 */	fmul f0, f0, f0
/* 8048FD24  FC 01 00 32 */	fmul f0, f1, f0
/* 8048FD28  FC 03 00 28 */	fsub f0, f3, f0
/* 8048FD2C  FC 02 00 32 */	fmul f0, f2, f0
/* 8048FD30  FC 21 00 32 */	fmul f1, f1, f0
/* 8048FD34  FC 20 08 18 */	frsp f1, f1
/* 8048FD38  48 00 00 88 */	b lbl_8048FDC0
lbl_8048FD3C:
/* 8048FD3C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8048FD40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048FD44  40 80 00 10 */	bge lbl_8048FD54
/* 8048FD48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8048FD4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8048FD50  48 00 00 70 */	b lbl_8048FDC0
lbl_8048FD54:
/* 8048FD54  D0 21 00 08 */	stfs f1, 8(r1)
/* 8048FD58  80 81 00 08 */	lwz r4, 8(r1)
/* 8048FD5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8048FD60  3C 00 7F 80 */	lis r0, 0x7f80
/* 8048FD64  7C 03 00 00 */	cmpw r3, r0
/* 8048FD68  41 82 00 14 */	beq lbl_8048FD7C
/* 8048FD6C  40 80 00 40 */	bge lbl_8048FDAC
/* 8048FD70  2C 03 00 00 */	cmpwi r3, 0
/* 8048FD74  41 82 00 20 */	beq lbl_8048FD94
/* 8048FD78  48 00 00 34 */	b lbl_8048FDAC
lbl_8048FD7C:
/* 8048FD7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8048FD80  41 82 00 0C */	beq lbl_8048FD8C
/* 8048FD84  38 00 00 01 */	li r0, 1
/* 8048FD88  48 00 00 28 */	b lbl_8048FDB0
lbl_8048FD8C:
/* 8048FD8C  38 00 00 02 */	li r0, 2
/* 8048FD90  48 00 00 20 */	b lbl_8048FDB0
lbl_8048FD94:
/* 8048FD94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8048FD98  41 82 00 0C */	beq lbl_8048FDA4
/* 8048FD9C  38 00 00 05 */	li r0, 5
/* 8048FDA0  48 00 00 10 */	b lbl_8048FDB0
lbl_8048FDA4:
/* 8048FDA4  38 00 00 03 */	li r0, 3
/* 8048FDA8  48 00 00 08 */	b lbl_8048FDB0
lbl_8048FDAC:
/* 8048FDAC  38 00 00 04 */	li r0, 4
lbl_8048FDB0:
/* 8048FDB0  2C 00 00 01 */	cmpwi r0, 1
/* 8048FDB4  40 82 00 0C */	bne lbl_8048FDC0
/* 8048FDB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8048FDBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8048FDC0:
/* 8048FDC0  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048FDC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048FDC8  7C 00 00 26 */	mfcr r0
/* 8048FDCC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8048FDD0  41 82 00 2C */	beq lbl_8048FDFC
/* 8048FDD4  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 8048FDD8  FC 00 08 50 */	fneg f0, f1
/* 8048FDDC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8048FDE0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8048FDE4  7C 00 00 26 */	mfcr r0
/* 8048FDE8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8048FDEC  41 82 00 10 */	beq lbl_8048FDFC
/* 8048FDF0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8048FDF4  7C 00 00 26 */	mfcr r0
/* 8048FDF8  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_8048FDFC:
/* 8048FDFC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8048FE00  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8048FE04  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8048FE08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048FE0C  7C 08 03 A6 */	mtlr r0
/* 8048FE10  38 21 00 40 */	addi r1, r1, 0x40
/* 8048FE14  4E 80 00 20 */	blr 
