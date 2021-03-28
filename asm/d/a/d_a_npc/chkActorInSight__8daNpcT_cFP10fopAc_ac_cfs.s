lbl_8014ABD0:
/* 8014ABD0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8014ABD4  7C 08 02 A6 */	mflr r0
/* 8014ABD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8014ABDC  39 61 00 60 */	addi r11, r1, 0x60
/* 8014ABE0  48 21 75 FD */	bl _savegpr_29
/* 8014ABE4  7C 7D 1B 78 */	mr r29, r3
/* 8014ABE8  7C 80 23 78 */	mr r0, r4
/* 8014ABEC  7C BE 2B 78 */	mr r30, r5
/* 8014ABF0  FC 00 0A 10 */	fabs f0, f1
/* 8014ABF4  FC 40 00 18 */	frsp f2, f0
/* 8014ABF8  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8014ABFC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8014AC00  40 80 00 0C */	bge lbl_8014AC0C
/* 8014AC04  38 60 00 00 */	li r3, 0
/* 8014AC08  48 00 00 D0 */	b lbl_8014ACD8
lbl_8014AC0C:
/* 8014AC0C  C0 02 9A 4C */	lfs f0, lit_6775(r2)
/* 8014AC10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014AC14  40 80 00 C0 */	bge lbl_8014ACD4
/* 8014AC18  C0 02 9A 20 */	lfs f0, lit_5239(r2)
/* 8014AC1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8014AC20  FC 00 00 1E */	fctiwz f0, f0
/* 8014AC24  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8014AC28  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 8014AC2C  38 61 00 28 */	addi r3, r1, 0x28
/* 8014AC30  7F A4 EB 78 */	mr r4, r29
/* 8014AC34  7C 05 03 78 */	mr r5, r0
/* 8014AC38  48 00 07 B5 */	bl getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 8014AC3C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8014AC40  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8014AC44  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8014AC48  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8014AC4C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8014AC50  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8014AC54  38 61 00 1C */	addi r3, r1, 0x1c
/* 8014AC58  38 9D 05 50 */	addi r4, r29, 0x550
/* 8014AC5C  38 A1 00 34 */	addi r5, r1, 0x34
/* 8014AC60  48 11 BE D5 */	bl __mi__4cXyzCFRC3Vec
/* 8014AC64  38 61 00 14 */	addi r3, r1, 0x14
/* 8014AC68  38 81 00 1C */	addi r4, r1, 0x1c
/* 8014AC6C  48 12 6C 15 */	bl __ct__7cSGlobeFRC4cXyz
/* 8014AC70  38 61 00 1A */	addi r3, r1, 0x1a
/* 8014AC74  48 12 64 75 */	bl Inv__7cSAngleCFv
/* 8014AC78  7C 64 1B 78 */	mr r4, r3
/* 8014AC7C  38 61 00 0C */	addi r3, r1, 0xc
/* 8014AC80  48 12 63 19 */	bl __ct__7cSAngleFs
/* 8014AC84  38 61 00 08 */	addi r3, r1, 8
/* 8014AC88  38 81 00 0C */	addi r4, r1, 0xc
/* 8014AC8C  7F C5 07 34 */	extsh r5, r30
/* 8014AC90  48 12 65 99 */	bl __mi__7cSAngleCFs
/* 8014AC94  38 61 00 10 */	addi r3, r1, 0x10
/* 8014AC98  38 81 00 08 */	addi r4, r1, 8
/* 8014AC9C  48 12 62 CD */	bl __ct__7cSAngleFRC7cSAngle
/* 8014ACA0  A8 01 00 10 */	lha r0, 0x10(r1)
/* 8014ACA4  7C 00 07 35 */	extsh. r0, r0
/* 8014ACA8  40 80 00 0C */	bge lbl_8014ACB4
/* 8014ACAC  7C 00 00 D0 */	neg r0, r0
/* 8014ACB0  7C 00 07 34 */	extsh r0, r0
lbl_8014ACB4:
/* 8014ACB4  7C 05 07 34 */	extsh r5, r0
/* 8014ACB8  7F E0 07 34 */	extsh r0, r31
/* 8014ACBC  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8014ACC0  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 8014ACC4  7C 05 00 10 */	subfc r0, r5, r0
/* 8014ACC8  7C 04 19 14 */	adde r0, r4, r3
/* 8014ACCC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8014ACD0  48 00 00 08 */	b lbl_8014ACD8
lbl_8014ACD4:
/* 8014ACD4  38 60 00 01 */	li r3, 1
lbl_8014ACD8:
/* 8014ACD8  39 61 00 60 */	addi r11, r1, 0x60
/* 8014ACDC  48 21 75 4D */	bl _restgpr_29
/* 8014ACE0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8014ACE4  7C 08 03 A6 */	mtlr r0
/* 8014ACE8  38 21 00 60 */	addi r1, r1, 0x60
/* 8014ACEC  4E 80 00 20 */	blr 
