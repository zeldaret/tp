lbl_8003F19C:
/* 8003F19C  3C C0 80 3F */	lis r6, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8003F1A0  38 C6 60 94 */	addi r6, r6, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8003F1A4  1C 03 04 04 */	mulli r0, r3, 0x404
/* 8003F1A8  7C 66 02 14 */	add r3, r6, r0
/* 8003F1AC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8003F1B0  28 04 00 00 */	cmplwi r4, 0
/* 8003F1B4  41 82 00 1C */	beq lbl_8003F1D0
/* 8003F1B8  C0 42 84 2C */	lfs f2, lit_3887(r2)
/* 8003F1BC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8003F1C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8003F1C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8003F1C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8003F1CC  D0 04 00 00 */	stfs f0, 0(r4)
lbl_8003F1D0:
/* 8003F1D0  28 05 00 00 */	cmplwi r5, 0
/* 8003F1D4  4D 82 00 20 */	beqlr 
/* 8003F1D8  C0 42 84 2C */	lfs f2, lit_3887(r2)
/* 8003F1DC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8003F1E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003F1E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8003F1E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8003F1EC  D0 05 00 00 */	stfs f0, 0(r5)
/* 8003F1F0  4E 80 00 20 */	blr 
