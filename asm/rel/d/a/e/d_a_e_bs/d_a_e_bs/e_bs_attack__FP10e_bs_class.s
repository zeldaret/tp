lbl_8068EF8C:
/* 8068EF8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8068EF90  7C 08 02 A6 */	mflr r0
/* 8068EF94  90 01 00 34 */	stw r0, 0x34(r1)
/* 8068EF98  39 61 00 30 */	addi r11, r1, 0x30
/* 8068EF9C  4B CD 32 41 */	bl _savegpr_29
/* 8068EFA0  7C 7E 1B 78 */	mr r30, r3
/* 8068EFA4  3C 80 80 69 */	lis r4, lit_3788@ha /* 0x80690DD8@ha */
/* 8068EFA8  3B E4 0D D8 */	addi r31, r4, lit_3788@l /* 0x80690DD8@l */
/* 8068EFAC  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 8068EFB0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8068EFB4  FC 00 00 1E */	fctiwz f0, f0
/* 8068EFB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8068EFBC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8068EFC0  38 00 00 01 */	li r0, 1
/* 8068EFC4  98 03 06 A8 */	stb r0, 0x6a8(r3)
/* 8068EFC8  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8068EFCC  2C 00 00 01 */	cmpwi r0, 1
/* 8068EFD0  41 82 00 34 */	beq lbl_8068F004
/* 8068EFD4  40 80 00 D8 */	bge lbl_8068F0AC
/* 8068EFD8  2C 00 00 00 */	cmpwi r0, 0
/* 8068EFDC  40 80 00 08 */	bge lbl_8068EFE4
/* 8068EFE0  48 00 00 CC */	b lbl_8068F0AC
lbl_8068EFE4:
/* 8068EFE4  38 80 00 05 */	li r4, 5
/* 8068EFE8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068EFEC  38 A0 00 00 */	li r5, 0
/* 8068EFF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068EFF4  4B FF F2 01 */	bl anm_init__FP10e_bs_classifUcf
/* 8068EFF8  38 00 00 01 */	li r0, 1
/* 8068EFFC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068F000  48 00 00 AC */	b lbl_8068F0AC
lbl_8068F004:
/* 8068F004  2C 1D 00 0A */	cmpwi r29, 0xa
/* 8068F008  40 80 00 18 */	bge lbl_8068F020
/* 8068F00C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8068F010  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 8068F014  38 A0 00 02 */	li r5, 2
/* 8068F018  38 C0 08 00 */	li r6, 0x800
/* 8068F01C  4B BE 15 ED */	bl cLib_addCalcAngleS2__FPssss
lbl_8068F020:
/* 8068F020  2C 1D 00 0D */	cmpwi r29, 0xd
/* 8068F024  41 80 00 48 */	blt lbl_8068F06C
/* 8068F028  2C 1D 00 14 */	cmpwi r29, 0x14
/* 8068F02C  41 81 00 40 */	bgt lbl_8068F06C
/* 8068F030  38 00 00 01 */	li r0, 1
/* 8068F034  98 1E 06 A6 */	stb r0, 0x6a6(r30)
/* 8068F038  2C 1D 00 0D */	cmpwi r29, 0xd
/* 8068F03C  40 82 00 30 */	bne lbl_8068F06C
/* 8068F040  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B2@ha */
/* 8068F044  38 03 00 B2 */	addi r0, r3, 0x00B2 /* 0x000700B2@l */
/* 8068F048  90 01 00 08 */	stw r0, 8(r1)
/* 8068F04C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8068F050  38 81 00 08 */	addi r4, r1, 8
/* 8068F054  38 A0 00 00 */	li r5, 0
/* 8068F058  38 C0 FF FF */	li r6, -1
/* 8068F05C  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 8068F060  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068F064  7D 89 03 A6 */	mtctr r12
/* 8068F068  4E 80 04 21 */	bctrl 
lbl_8068F06C:
/* 8068F06C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8068F070  38 80 00 01 */	li r4, 1
/* 8068F074  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8068F078  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8068F07C  40 82 00 18 */	bne lbl_8068F094
/* 8068F080  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8068F084  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8068F088  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8068F08C  41 82 00 08 */	beq lbl_8068F094
/* 8068F090  38 80 00 00 */	li r4, 0
lbl_8068F094:
/* 8068F094  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8068F098  41 82 00 14 */	beq lbl_8068F0AC
/* 8068F09C  38 00 00 02 */	li r0, 2
/* 8068F0A0  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8068F0A4  38 00 00 00 */	li r0, 0
/* 8068F0A8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8068F0AC:
/* 8068F0AC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8068F0B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068F0B4  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 8068F0B8  4B BE 09 C9 */	bl cLib_addCalc0__FPfff
/* 8068F0BC  88 1E 06 A6 */	lbz r0, 0x6a6(r30)
/* 8068F0C0  7C 00 07 75 */	extsb. r0, r0
/* 8068F0C4  41 82 00 80 */	beq lbl_8068F144
/* 8068F0C8  7F C3 F3 78 */	mr r3, r30
/* 8068F0CC  4B FF FE 61 */	bl at_hit_check__FP10e_bs_class
/* 8068F0D0  28 03 00 00 */	cmplwi r3, 0
/* 8068F0D4  41 82 00 70 */	beq lbl_8068F144
/* 8068F0D8  A8 03 00 08 */	lha r0, 8(r3)
/* 8068F0DC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8068F0E0  40 82 00 64 */	bne lbl_8068F144
/* 8068F0E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068F0E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068F0EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8068F0F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8068F0F4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8068F0F8  7D 89 03 A6 */	mtctr r12
/* 8068F0FC  4E 80 04 21 */	bctrl 
/* 8068F100  2C 03 00 00 */	cmpwi r3, 0
/* 8068F104  41 82 00 40 */	beq lbl_8068F144
/* 8068F108  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068F10C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8068F110  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8068F114  38 00 00 02 */	li r0, 2
/* 8068F118  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8068F11C  38 00 00 00 */	li r0, 0
/* 8068F120  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068F124  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8068F128  4B BD 88 2D */	bl cM_rndF__Ff
/* 8068F12C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8068F130  EC 00 08 2A */	fadds f0, f0, f1
/* 8068F134  FC 00 00 1E */	fctiwz f0, f0
/* 8068F138  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8068F13C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068F140  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_8068F144:
/* 8068F144  39 61 00 30 */	addi r11, r1, 0x30
/* 8068F148  4B CD 30 E1 */	bl _restgpr_29
/* 8068F14C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8068F150  7C 08 03 A6 */	mtlr r0
/* 8068F154  38 21 00 30 */	addi r1, r1, 0x30
/* 8068F158  4E 80 00 20 */	blr 
