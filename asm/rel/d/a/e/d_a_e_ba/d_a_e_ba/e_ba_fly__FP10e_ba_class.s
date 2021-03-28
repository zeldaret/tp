lbl_8067FF60:
/* 8067FF60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8067FF64  7C 08 02 A6 */	mflr r0
/* 8067FF68  90 01 00 44 */	stw r0, 0x44(r1)
/* 8067FF6C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8067FF70  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8067FF74  7C 7E 1B 78 */	mr r30, r3
/* 8067FF78  3C 80 80 68 */	lis r4, lit_3947@ha
/* 8067FF7C  3B E4 23 BC */	addi r31, r4, lit_3947@l
/* 8067FF80  A8 03 06 74 */	lha r0, 0x674(r3)
/* 8067FF84  2C 00 00 01 */	cmpwi r0, 1
/* 8067FF88  41 82 00 34 */	beq lbl_8067FFBC
/* 8067FF8C  40 80 01 98 */	bge lbl_80680124
/* 8067FF90  2C 00 00 00 */	cmpwi r0, 0
/* 8067FF94  40 80 00 08 */	bge lbl_8067FF9C
/* 8067FF98  48 00 01 8C */	b lbl_80680124
lbl_8067FF9C:
/* 8067FF9C  38 80 00 06 */	li r4, 6
/* 8067FFA0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8067FFA4  38 A0 00 02 */	li r5, 2
/* 8067FFA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8067FFAC  4B FF ED E5 */	bl anm_init__FP10e_ba_classifUcf
/* 8067FFB0  38 00 00 01 */	li r0, 1
/* 8067FFB4  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067FFB8  48 00 01 6C */	b lbl_80680124
lbl_8067FFBC:
/* 8067FFBC  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 8067FFC0  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8067FFC4  40 82 00 40 */	bne lbl_80680004
/* 8067FFC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067FFCC  4B BE 79 88 */	b cM_rndF__Ff
/* 8067FFD0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8067FFD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067FFD8  40 80 00 2C */	bge lbl_80680004
/* 8067FFDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B3@ha */
/* 8067FFE0  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000700B3@l */
/* 8067FFE4  90 01 00 08 */	stw r0, 8(r1)
/* 8067FFE8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8067FFEC  38 81 00 08 */	addi r4, r1, 8
/* 8067FFF0  38 A0 FF FF */	li r5, -1
/* 8067FFF4  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 8067FFF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067FFFC  7D 89 03 A6 */	mtctr r12
/* 80680000  4E 80 04 21 */	bctrl 
lbl_80680004:
/* 80680004  A8 1E 06 A6 */	lha r0, 0x6a6(r30)
/* 80680008  2C 00 00 00 */	cmpwi r0, 0
/* 8068000C  40 82 01 18 */	bne lbl_80680124
/* 80680010  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80680014  4B BE 79 78 */	b cM_rndFX__Ff
/* 80680018  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8068001C  EC 00 08 2A */	fadds f0, f0, f1
/* 80680020  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80680024  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80680028  4B BE 79 64 */	b cM_rndFX__Ff
/* 8068002C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80680030  EC 00 08 2A */	fadds f0, f0, f1
/* 80680034  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80680038  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8068003C  4B BE 79 50 */	b cM_rndFX__Ff
/* 80680040  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80680044  EC 00 08 2A */	fadds f0, f0, f1
/* 80680048  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8068004C  38 61 00 0C */	addi r3, r1, 0xc
/* 80680050  38 9E 06 78 */	addi r4, r30, 0x678
/* 80680054  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80680058  4B BE 6A DC */	b __mi__4cXyzCFRC3Vec
/* 8068005C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80680060  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80680064  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80680068  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068006C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80680070  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80680074  4B BE 76 00 */	b cM_atan2s__Fff
/* 80680078  7C 64 1B 78 */	mr r4, r3
/* 8068007C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80680080  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80680084  80 63 00 00 */	lwz r3, 0(r3)
/* 80680088  4B 98 C3 54 */	b mDoMtx_YrotS__FPA4_fs
/* 8068008C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80680090  EC 20 00 32 */	fmuls f1, f0, f0
/* 80680094  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80680098  EC 00 00 32 */	fmuls f0, f0, f0
/* 8068009C  EC 41 00 2A */	fadds f2, f1, f0
/* 806800A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806800A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806800A8  40 81 00 0C */	ble lbl_806800B4
/* 806800AC  FC 00 10 34 */	frsqrte f0, f2
/* 806800B0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806800B4:
/* 806800B4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 806800B8  4B BE 75 BC */	b cM_atan2s__Fff
/* 806800BC  7C 03 00 D0 */	neg r0, r3
/* 806800C0  7C 04 07 34 */	extsh r4, r0
/* 806800C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806800C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806800CC  80 63 00 00 */	lwz r3, 0(r3)
/* 806800D0  4B 98 C2 CC */	b mDoMtx_XrotM__FPA4_fs
/* 806800D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806800D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806800DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806800E0  3C 60 80 68 */	lis r3, l_HIO@ha
/* 806800E4  38 63 26 48 */	addi r3, r3, l_HIO@l
/* 806800E8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806800EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806800F0  38 61 00 18 */	addi r3, r1, 0x18
/* 806800F4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806800F8  4B BF 0D F4 */	b MtxPosition__FP4cXyzP4cXyz
/* 806800FC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80680100  4B BE 78 54 */	b cM_rndF__Ff
/* 80680104  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80680108  EC 00 08 2A */	fadds f0, f0, f1
/* 8068010C  FC 00 00 1E */	fctiwz f0, f0
/* 80680110  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80680114  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80680118  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 8068011C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80680120  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_80680124:
/* 80680124  3C 60 80 68 */	lis r3, l_HIO@ha
/* 80680128  38 63 26 48 */	addi r3, r3, l_HIO@l
/* 8068012C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80680130  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80680134  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80680138  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8068013C  EC 60 00 72 */	fmuls f3, f0, f1
/* 80680140  4B BE F8 FC */	b cLib_addCalc2__FPffff
/* 80680144  7F C3 F3 78 */	mr r3, r30
/* 80680148  4B FF F3 FD */	bl fly_move__FP10e_ba_class
/* 8068014C  7F C3 F3 78 */	mr r3, r30
/* 80680150  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 80680154  38 80 00 01 */	li r4, 1
/* 80680158  4B FF EE A1 */	bl pl_check__FP10e_ba_classfs
/* 8068015C  2C 03 00 00 */	cmpwi r3, 0
/* 80680160  41 82 00 14 */	beq lbl_80680174
/* 80680164  38 00 00 01 */	li r0, 1
/* 80680168  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8068016C  38 00 00 00 */	li r0, 0
/* 80680170  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_80680174:
/* 80680174  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80680178  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8068017C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80680180  7C 08 03 A6 */	mtlr r0
/* 80680184  38 21 00 40 */	addi r1, r1, 0x40
/* 80680188  4E 80 00 20 */	blr 
