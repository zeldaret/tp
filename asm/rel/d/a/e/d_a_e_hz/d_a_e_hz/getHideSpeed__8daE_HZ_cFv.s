lbl_806EB7B0:
/* 806EB7B0  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EB7B4  38 84 08 60 */	addi r4, r4, lit_3966@l /* 0x806F0860@l */
/* 806EB7B8  80 03 06 CC */	lwz r0, 0x6cc(r3)
/* 806EB7BC  2C 00 00 03 */	cmpwi r0, 3
/* 806EB7C0  40 80 00 34 */	bge lbl_806EB7F4
/* 806EB7C4  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 806EB7C8  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 806EB7CC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 806EB7D0  41 82 00 14 */	beq lbl_806EB7E4
/* 806EB7D4  C0 24 00 04 */	lfs f1, 4(r4)
/* 806EB7D8  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 806EB7DC  EC 02 00 2A */	fadds f0, f2, f0
/* 806EB7E0  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
lbl_806EB7E4:
/* 806EB7E4  80 83 06 CC */	lwz r4, 0x6cc(r3)
/* 806EB7E8  38 04 00 01 */	addi r0, r4, 1
/* 806EB7EC  90 03 06 CC */	stw r0, 0x6cc(r3)
/* 806EB7F0  4E 80 00 20 */	blr 
lbl_806EB7F4:
/* 806EB7F4  C0 24 00 44 */	lfs f1, 0x44(r4)
/* 806EB7F8  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 806EB7FC  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 806EB800  EC 42 00 28 */	fsubs f2, f2, f0
/* 806EB804  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 806EB808  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806EB80C  4C 81 00 20 */	blelr 
/* 806EB810  FC 20 00 90 */	fmr f1, f0
/* 806EB814  4E 80 00 20 */	blr 
