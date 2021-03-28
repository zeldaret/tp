lbl_80CA62A4:
/* 80CA62A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA62A8  7C 08 02 A6 */	mflr r0
/* 80CA62AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA62B0  3C 80 80 CA */	lis r4, ccSphSrc@ha
/* 80CA62B4  38 A4 64 80 */	addi r5, r4, ccSphSrc@l
/* 80CA62B8  3C 80 80 CA */	lis r4, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80CA62BC  38 04 5A 88 */	addi r0, r4, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80CA62C0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80CA62C4  90 04 00 B4 */	stw r0, 0xb4(r4)
/* 80CA62C8  C0 25 00 C4 */	lfs f1, 0xc4(r5)
/* 80CA62CC  C0 45 00 C8 */	lfs f2, 0xc8(r5)
/* 80CA62D0  FC 60 08 90 */	fmr f3, f1
/* 80CA62D4  C0 85 00 CC */	lfs f4, 0xcc(r5)
/* 80CA62D8  C0 A5 00 B0 */	lfs f5, 0xb0(r5)
/* 80CA62DC  FC C0 20 90 */	fmr f6, f4
/* 80CA62E0  4B 37 42 68 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CA62E4  38 60 00 04 */	li r3, 4
/* 80CA62E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA62EC  7C 08 03 A6 */	mtlr r0
/* 80CA62F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA62F4  4E 80 00 20 */	blr 
