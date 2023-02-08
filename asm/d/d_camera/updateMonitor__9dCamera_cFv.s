lbl_80161E34:
/* 80161E34  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80161E38  7C 08 02 A6 */	mflr r0
/* 80161E3C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80161E40  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80161E44  7C 7F 1B 78 */	mr r31, r3
/* 80161E48  80 A3 01 80 */	lwz r5, 0x180(r3)
/* 80161E4C  28 05 00 00 */	cmplwi r5, 0
/* 80161E50  41 82 02 24 */	beq lbl_80162074
/* 80161E54  38 61 00 30 */	addi r3, r1, 0x30
/* 80161E58  7F E4 FB 78 */	mr r4, r31
/* 80161E5C  4B F3 59 01 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80161E60  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80161E64  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80161E68  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80161E6C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80161E70  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80161E74  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80161E78  38 61 00 24 */	addi r3, r1, 0x24
/* 80161E7C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80161E80  38 BF 02 A0 */	addi r5, r31, 0x2a0
/* 80161E84  48 10 4C B1 */	bl __mi__4cXyzCFRC3Vec
/* 80161E88  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80161E8C  D0 1F 02 B4 */	stfs f0, 0x2b4(r31)
/* 80161E90  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80161E94  D0 1F 02 B8 */	stfs f0, 0x2b8(r31)
/* 80161E98  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80161E9C  D0 1F 02 BC */	stfs f0, 0x2bc(r31)
/* 80161EA0  88 1F 03 8D */	lbz r0, 0x38d(r31)
/* 80161EA4  28 00 00 00 */	cmplwi r0, 0
/* 80161EA8  41 82 00 28 */	beq lbl_80161ED0
/* 80161EAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80161EB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80161EB4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80161EB8  38 9F 03 40 */	addi r4, r31, 0x340
/* 80161EBC  38 A0 00 01 */	li r5, 1
/* 80161EC0  38 DF 02 A0 */	addi r6, r31, 0x2a0
/* 80161EC4  38 E0 00 00 */	li r7, 0
/* 80161EC8  39 00 00 00 */	li r8, 0
/* 80161ECC  4B F1 3A 91 */	bl MoveBgMatrixCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
lbl_80161ED0:
/* 80161ED0  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80161ED4  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80161ED8  41 82 01 1C */	beq lbl_80161FF4
/* 80161EDC  38 61 00 18 */	addi r3, r1, 0x18
/* 80161EE0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80161EE4  38 BF 02 A0 */	addi r5, r31, 0x2a0
/* 80161EE8  48 10 4C 4D */	bl __mi__4cXyzCFRC3Vec
/* 80161EEC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80161EF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80161EF4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80161EF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80161EFC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80161F00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80161F04  38 61 00 0C */	addi r3, r1, 0xc
/* 80161F08  48 1E 52 31 */	bl PSVECSquareMag
/* 80161F0C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80161F10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161F14  40 81 00 58 */	ble lbl_80161F6C
/* 80161F18  FC 00 08 34 */	frsqrte f0, f1
/* 80161F1C  C8 82 9C C8 */	lfd f4, lit_6177(r2)
/* 80161F20  FC 44 00 32 */	fmul f2, f4, f0
/* 80161F24  C8 62 9C D0 */	lfd f3, lit_6178(r2)
/* 80161F28  FC 00 00 32 */	fmul f0, f0, f0
/* 80161F2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80161F30  FC 03 00 28 */	fsub f0, f3, f0
/* 80161F34  FC 02 00 32 */	fmul f0, f2, f0
/* 80161F38  FC 44 00 32 */	fmul f2, f4, f0
/* 80161F3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80161F40  FC 01 00 32 */	fmul f0, f1, f0
/* 80161F44  FC 03 00 28 */	fsub f0, f3, f0
/* 80161F48  FC 02 00 32 */	fmul f0, f2, f0
/* 80161F4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80161F50  FC 00 00 32 */	fmul f0, f0, f0
/* 80161F54  FC 01 00 32 */	fmul f0, f1, f0
/* 80161F58  FC 03 00 28 */	fsub f0, f3, f0
/* 80161F5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80161F60  FC 21 00 32 */	fmul f1, f1, f0
/* 80161F64  FC 20 08 18 */	frsp f1, f1
/* 80161F68  48 00 00 98 */	b lbl_80162000
lbl_80161F6C:
/* 80161F6C  C8 02 9C D8 */	lfd f0, lit_6179(r2)
/* 80161F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161F74  40 80 00 10 */	bge lbl_80161F84
/* 80161F78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80161F7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80161F80  48 00 00 80 */	b lbl_80162000
lbl_80161F84:
/* 80161F84  D0 21 00 08 */	stfs f1, 8(r1)
/* 80161F88  80 81 00 08 */	lwz r4, 8(r1)
/* 80161F8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80161F90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80161F94  7C 03 00 00 */	cmpw r3, r0
/* 80161F98  41 82 00 14 */	beq lbl_80161FAC
/* 80161F9C  40 80 00 40 */	bge lbl_80161FDC
/* 80161FA0  2C 03 00 00 */	cmpwi r3, 0
/* 80161FA4  41 82 00 20 */	beq lbl_80161FC4
/* 80161FA8  48 00 00 34 */	b lbl_80161FDC
lbl_80161FAC:
/* 80161FAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80161FB0  41 82 00 0C */	beq lbl_80161FBC
/* 80161FB4  38 00 00 01 */	li r0, 1
/* 80161FB8  48 00 00 28 */	b lbl_80161FE0
lbl_80161FBC:
/* 80161FBC  38 00 00 02 */	li r0, 2
/* 80161FC0  48 00 00 20 */	b lbl_80161FE0
lbl_80161FC4:
/* 80161FC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80161FC8  41 82 00 0C */	beq lbl_80161FD4
/* 80161FCC  38 00 00 05 */	li r0, 5
/* 80161FD0  48 00 00 10 */	b lbl_80161FE0
lbl_80161FD4:
/* 80161FD4  38 00 00 03 */	li r0, 3
/* 80161FD8  48 00 00 08 */	b lbl_80161FE0
lbl_80161FDC:
/* 80161FDC  38 00 00 04 */	li r0, 4
lbl_80161FE0:
/* 80161FE0  2C 00 00 01 */	cmpwi r0, 1
/* 80161FE4  40 82 00 1C */	bne lbl_80162000
/* 80161FE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80161FEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80161FF0  48 00 00 10 */	b lbl_80162000
lbl_80161FF4:
/* 80161FF4  38 61 00 3C */	addi r3, r1, 0x3c
/* 80161FF8  38 9F 02 A0 */	addi r4, r31, 0x2a0
/* 80161FFC  4B F2 63 F1 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
lbl_80162000:
/* 80162000  C0 1F 02 AC */	lfs f0, 0x2ac(r31)
/* 80162004  EC 01 00 28 */	fsubs f0, f1, f0
/* 80162008  D0 1F 02 C0 */	stfs f0, 0x2c0(r31)
/* 8016200C  C0 7F 02 B0 */	lfs f3, 0x2b0(r31)
/* 80162010  C0 42 9C E0 */	lfs f2, lit_6180(r2)
/* 80162014  EC 01 18 28 */	fsubs f0, f1, f3
/* 80162018  EC 02 00 32 */	fmuls f0, f2, f0
/* 8016201C  EC 03 00 2A */	fadds f0, f3, f0
/* 80162020  D0 1F 02 B0 */	stfs f0, 0x2b0(r31)
/* 80162024  D0 3F 02 AC */	stfs f1, 0x2ac(r31)
/* 80162028  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8016202C  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
/* 80162030  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80162034  D0 1F 02 A4 */	stfs f0, 0x2a4(r31)
/* 80162038  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8016203C  D0 1F 02 A8 */	stfs f0, 0x2a8(r31)
/* 80162040  88 1F 02 24 */	lbz r0, 0x224(r31)
/* 80162044  28 00 00 00 */	cmplwi r0, 0
/* 80162048  40 82 00 14 */	bne lbl_8016205C
/* 8016204C  80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 80162050  38 03 00 01 */	addi r0, r3, 1
/* 80162054  90 1F 02 C4 */	stw r0, 0x2c4(r31)
/* 80162058  48 00 00 0C */	b lbl_80162064
lbl_8016205C:
/* 8016205C  38 00 00 00 */	li r0, 0
/* 80162060  90 1F 02 C4 */	stw r0, 0x2c4(r31)
lbl_80162064:
/* 80162064  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80162068  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 8016206C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80162070  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
lbl_80162074:
/* 80162074  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80162078  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8016207C  7C 08 03 A6 */	mtlr r0
/* 80162080  38 21 00 50 */	addi r1, r1, 0x50
/* 80162084  4E 80 00 20 */	blr 
