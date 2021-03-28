lbl_80D185DC:
/* 80D185DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D185E0  7C 08 02 A6 */	mflr r0
/* 80D185E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D185E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D185EC  7C 7F 1B 78 */	mr r31, r3
/* 80D185F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D185F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D185F8  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80D185FC  38 61 00 08 */	addi r3, r1, 8
/* 80D18600  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D18604  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80D18608  4B 54 E5 2C */	b __mi__4cXyzCFRC3Vec
/* 80D1860C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D18610  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D18614  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D18618  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D1861C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D18620  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D18624  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D18628  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1862C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D18630  7C 00 00 D0 */	neg r0, r0
/* 80D18634  7C 04 07 34 */	extsh r4, r0
/* 80D18638  4B 2F 3D A4 */	b mDoMtx_YrotS__FPA4_fs
/* 80D1863C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D18640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D18644  38 81 00 14 */	addi r4, r1, 0x14
/* 80D18648  7C 85 23 78 */	mr r5, r4
/* 80D1864C  4B 62 E7 20 */	b PSMTXMultVec
/* 80D18650  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D18654  FC 00 02 10 */	fabs f0, f0
/* 80D18658  FC 20 00 18 */	frsp f1, f0
/* 80D1865C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D18660  FC 00 02 10 */	fabs f0, f0
/* 80D18664  FC 40 00 18 */	frsp f2, f0
/* 80D18668  38 60 00 00 */	li r3, 0
/* 80D1866C  3C 80 80 D2 */	lis r4, l_HIO@ha
/* 80D18670  38 84 90 B4 */	addi r4, r4, l_HIO@l
/* 80D18674  C0 04 00 04 */	lfs f0, 4(r4)
/* 80D18678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1867C  4C 40 13 82 */	cror 2, 0, 2
/* 80D18680  40 82 00 1C */	bne lbl_80D1869C
/* 80D18684  3C 80 80 D2 */	lis r4, lit_3975@ha
/* 80D18688  C0 04 8E F8 */	lfs f0, lit_3975@l(r4)
/* 80D1868C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D18690  4C 40 13 82 */	cror 2, 0, 2
/* 80D18694  40 82 00 08 */	bne lbl_80D1869C
/* 80D18698  38 60 00 01 */	li r3, 1
lbl_80D1869C:
/* 80D1869C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D186A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D186A4  7C 08 03 A6 */	mtlr r0
/* 80D186A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80D186AC  4E 80 00 20 */	blr 
