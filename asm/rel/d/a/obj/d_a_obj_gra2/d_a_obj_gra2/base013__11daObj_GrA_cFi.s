lbl_80C03FC0:
/* 80C03FC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C03FC4  7C 08 02 A6 */	mflr r0
/* 80C03FC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C03FCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C03FD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C03FD4  7C 7E 1B 78 */	mr r30, r3
/* 80C03FD8  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C03FDC  3B E5 FA 7C */	addi r31, r5, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C03FE0  2C 04 00 00 */	cmpwi r4, 0
/* 80C03FE4  41 82 00 24 */	beq lbl_80C04008
/* 80C03FE8  38 80 00 09 */	li r4, 9
/* 80C03FEC  C0 3E 0A 94 */	lfs f1, 0xa94(r30)
/* 80C03FF0  4B FF D3 C1 */	bl setBaseAnm__11daObj_GrA_cFif
/* 80C03FF4  38 00 00 1E */	li r0, 0x1e
/* 80C03FF8  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C03FFC  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80C04000  38 00 00 00 */	li r0, 0
/* 80C04004  90 1E 20 10 */	stw r0, 0x2010(r30)
lbl_80C04008:
/* 80C04008  80 1E 05 98 */	lwz r0, 0x598(r30)
/* 80C0400C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C04010  41 82 00 40 */	beq lbl_80C04050
/* 80C04014  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C04018  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80C0401C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C04020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C04024  4C 41 13 82 */	cror 2, 1, 2
/* 80C04028  41 82 00 14 */	beq lbl_80C0403C
/* 80C0402C  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80C04030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C04034  4C 40 13 82 */	cror 2, 0, 2
/* 80C04038  40 82 00 0C */	bne lbl_80C04044
lbl_80C0403C:
/* 80C0403C  38 00 00 01 */	li r0, 1
/* 80C04040  98 1E 20 1D */	stb r0, 0x201d(r30)
lbl_80C04044:
/* 80C04044  38 00 00 00 */	li r0, 0
/* 80C04048  98 1E 20 1C */	stb r0, 0x201c(r30)
/* 80C0404C  48 00 00 1C */	b lbl_80C04068
lbl_80C04050:
/* 80C04050  88 7E 20 1C */	lbz r3, 0x201c(r30)
/* 80C04054  7C 60 07 74 */	extsb r0, r3
/* 80C04058  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C0405C  40 80 00 0C */	bge lbl_80C04068
/* 80C04060  38 03 00 01 */	addi r0, r3, 1
/* 80C04064  98 1E 20 1C */	stb r0, 0x201c(r30)
lbl_80C04068:
/* 80C04068  80 7E 20 10 */	lwz r3, 0x2010(r30)
/* 80C0406C  A0 1E 08 42 */	lhz r0, 0x842(r30)
/* 80C04070  7C 03 00 00 */	cmpw r3, r0
/* 80C04074  41 82 00 88 */	beq lbl_80C040FC
/* 80C04078  88 1E 20 1C */	lbz r0, 0x201c(r30)
/* 80C0407C  7C 00 07 74 */	extsb r0, r0
/* 80C04080  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C04084  40 80 00 78 */	bge lbl_80C040FC
/* 80C04088  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0408C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C04090  FC 00 02 10 */	fabs f0, f0
/* 80C04094  FC 20 00 18 */	frsp f1, f0
/* 80C04098  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C0409C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C040A0  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80C040A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C040A8  40 80 00 08 */	bge lbl_80C040B0
/* 80C040AC  48 00 00 18 */	b lbl_80C040C4
lbl_80C040B0:
/* 80C040B0  C0 3F 03 8C */	lfs f1, 0x38c(r31)
/* 80C040B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C040B8  40 81 00 08 */	ble lbl_80C040C0
/* 80C040BC  48 00 00 08 */	b lbl_80C040C4
lbl_80C040C0:
/* 80C040C0  FC 20 00 90 */	fmr f1, f0
lbl_80C040C4:
/* 80C040C4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004A@ha */
/* 80C040C8  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0006004A@l */
/* 80C040CC  90 01 00 08 */	stw r0, 8(r1)
/* 80C040D0  4B 75 DF DD */	bl __cvt_fp2unsigned
/* 80C040D4  7C 65 1B 78 */	mr r5, r3
/* 80C040D8  38 7E 07 58 */	addi r3, r30, 0x758
/* 80C040DC  38 81 00 08 */	addi r4, r1, 8
/* 80C040E0  38 C0 FF FF */	li r6, -1
/* 80C040E4  81 9E 07 58 */	lwz r12, 0x758(r30)
/* 80C040E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C040EC  7D 89 03 A6 */	mtctr r12
/* 80C040F0  4E 80 04 21 */	bctrl 
/* 80C040F4  A0 1E 08 42 */	lhz r0, 0x842(r30)
/* 80C040F8  90 1E 20 10 */	stw r0, 0x2010(r30)
lbl_80C040FC:
/* 80C040FC  38 60 00 01 */	li r3, 1
/* 80C04100  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C04104  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C04108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0410C  7C 08 03 A6 */	mtlr r0
/* 80C04110  38 21 00 20 */	addi r1, r1, 0x20
/* 80C04114  4E 80 00 20 */	blr 
