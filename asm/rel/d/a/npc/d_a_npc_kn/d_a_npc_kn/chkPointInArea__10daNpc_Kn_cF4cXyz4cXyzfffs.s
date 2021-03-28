lbl_80A3AC24:
/* 80A3AC24  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A3AC28  7C 08 02 A6 */	mflr r0
/* 80A3AC2C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A3AC30  7C C7 33 78 */	mr r7, r6
/* 80A3AC34  FC C0 18 90 */	fmr f6, f3
/* 80A3AC38  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80A3AC3C  40 80 00 0C */	bge lbl_80A3AC48
/* 80A3AC40  FC C0 10 90 */	fmr f6, f2
/* 80A3AC44  FC 40 18 90 */	fmr f2, f3
lbl_80A3AC48:
/* 80A3AC48  EC 02 30 28 */	fsubs f0, f2, f6
/* 80A3AC4C  FC 00 02 10 */	fabs f0, f0
/* 80A3AC50  FC A0 00 18 */	frsp f5, f0
/* 80A3AC54  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80A3AC58  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 80A3AC5C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80A3AC60  C0 85 00 00 */	lfs f4, 0(r5)
/* 80A3AC64  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 80A3AC68  C0 05 00 04 */	lfs f0, 4(r5)
/* 80A3AC6C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A3AC70  C0 65 00 08 */	lfs f3, 8(r5)
/* 80A3AC74  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80A3AC78  EC 40 30 2A */	fadds f2, f0, f6
/* 80A3AC7C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80A3AC80  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A3AC84  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A3AC88  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A3AC8C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A3AC90  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A3AC94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3AC98  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80A3AC9C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80A3ACA0  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80A3ACA4  FC 00 08 18 */	frsp f0, f1
/* 80A3ACA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3ACAC  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80A3ACB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3ACB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80A3ACB8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A3ACBC  38 C1 00 08 */	addi r6, r1, 8
/* 80A3ACC0  48 00 00 15 */	bl chkPointInArea__10daNpc_Kn_cF4cXyz4cXyz4cXyzs
/* 80A3ACC4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A3ACC8  7C 08 03 A6 */	mtlr r0
/* 80A3ACCC  38 21 00 50 */	addi r1, r1, 0x50
/* 80A3ACD0  4E 80 00 20 */	blr 
