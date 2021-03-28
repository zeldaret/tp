lbl_80BF2070:
/* 80BF2070  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF2074  7C 08 02 A6 */	mflr r0
/* 80BF2078  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF207C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BF2080  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BF2084  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80BF2088  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80BF208C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BF2090  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BF2094  7C 9E 23 78 */	mr r30, r4
/* 80BF2098  3C 60 80 BF */	lis r3, lit_3647@ha
/* 80BF209C  3B E3 2B 48 */	addi r31, r3, lit_3647@l
/* 80BF20A0  A8 05 00 08 */	lha r0, 8(r5)
/* 80BF20A4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80BF20A8  40 82 00 CC */	bne lbl_80BF2174
/* 80BF20AC  A8 1E 05 92 */	lha r0, 0x592(r30)
/* 80BF20B0  2C 00 00 00 */	cmpwi r0, 0
/* 80BF20B4  40 82 00 0C */	bne lbl_80BF20C0
/* 80BF20B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BF20BC  D0 1E 05 98 */	stfs f0, 0x598(r30)
lbl_80BF20C0:
/* 80BF20C0  38 00 00 0A */	li r0, 0xa
/* 80BF20C4  B0 1E 05 92 */	sth r0, 0x592(r30)
/* 80BF20C8  C0 25 04 D0 */	lfs f1, 0x4d0(r5)
/* 80BF20CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF20D0  EF E1 00 28 */	fsubs f31, f1, f0
/* 80BF20D4  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 80BF20D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF20DC  EF C1 00 28 */	fsubs f30, f1, f0
/* 80BF20E0  FC 20 F8 90 */	fmr f1, f31
/* 80BF20E4  FC 40 F0 90 */	fmr f2, f30
/* 80BF20E8  4B 67 55 8C */	b cM_atan2s__Fff
/* 80BF20EC  7C 64 1B 78 */	mr r4, r3
/* 80BF20F0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80BF20F4  38 A0 00 04 */	li r5, 4
/* 80BF20F8  38 C0 00 80 */	li r6, 0x80
/* 80BF20FC  4B 67 E5 0C */	b cLib_addCalcAngleS2__FPssss
/* 80BF2100  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80BF2104  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80BF2108  EC 41 00 2A */	fadds f2, f1, f0
/* 80BF210C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BF2110  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BF2114  40 81 00 0C */	ble lbl_80BF2120
/* 80BF2118  FC 00 10 34 */	frsqrte f0, f2
/* 80BF211C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80BF2120:
/* 80BF2120  3C 60 80 BF */	lis r3, l_HIO@ha
/* 80BF2124  38 63 2C 30 */	addi r3, r3, l_HIO@l
/* 80BF2128  C0 23 00 08 */	lfs f1, 8(r3)
/* 80BF212C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BF2130  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BF2134  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF2138  FC 00 00 1E */	fctiwz f0, f0
/* 80BF213C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BF2140  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BF2144  7C 80 07 34 */	extsh r0, r4
/* 80BF2148  2C 00 08 00 */	cmpwi r0, 0x800
/* 80BF214C  40 81 00 0C */	ble lbl_80BF2158
/* 80BF2150  38 80 08 00 */	li r4, 0x800
/* 80BF2154  48 00 00 10 */	b lbl_80BF2164
lbl_80BF2158:
/* 80BF2158  2C 00 F8 00 */	cmpwi r0, -2048
/* 80BF215C  40 80 00 08 */	bge lbl_80BF2164
/* 80BF2160  38 80 F8 00 */	li r4, -2048
lbl_80BF2164:
/* 80BF2164  38 7E 05 A2 */	addi r3, r30, 0x5a2
/* 80BF2168  38 A0 00 04 */	li r5, 4
/* 80BF216C  38 C0 00 20 */	li r6, 0x20
/* 80BF2170  4B 67 E4 98 */	b cLib_addCalcAngleS2__FPssss
lbl_80BF2174:
/* 80BF2174  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BF2178  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BF217C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80BF2180  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80BF2184  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BF2188  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BF218C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF2190  7C 08 03 A6 */	mtlr r0
/* 80BF2194  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF2198  4E 80 00 20 */	blr 
