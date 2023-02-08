lbl_805F0620:
/* 805F0620  C0 23 1C A8 */	lfs f1, 0x1ca8(r3)
/* 805F0624  C0 03 1C 90 */	lfs f0, 0x1c90(r3)
/* 805F0628  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F062C  FC 00 02 10 */	fabs f0, f0
/* 805F0630  FC 00 00 18 */	frsp f0, f0
/* 805F0634  D0 03 1C C0 */	stfs f0, 0x1cc0(r3)
/* 805F0638  C0 23 1C AC */	lfs f1, 0x1cac(r3)
/* 805F063C  C0 03 1C 94 */	lfs f0, 0x1c94(r3)
/* 805F0640  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F0644  FC 00 02 10 */	fabs f0, f0
/* 805F0648  FC 00 00 18 */	frsp f0, f0
/* 805F064C  D0 03 1C C4 */	stfs f0, 0x1cc4(r3)
/* 805F0650  C0 23 1C B0 */	lfs f1, 0x1cb0(r3)
/* 805F0654  C0 03 1C 98 */	lfs f0, 0x1c98(r3)
/* 805F0658  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F065C  FC 00 02 10 */	fabs f0, f0
/* 805F0660  FC 00 00 18 */	frsp f0, f0
/* 805F0664  D0 03 1C C8 */	stfs f0, 0x1cc8(r3)
/* 805F0668  C0 23 1C B4 */	lfs f1, 0x1cb4(r3)
/* 805F066C  C0 03 1C 9C */	lfs f0, 0x1c9c(r3)
/* 805F0670  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F0674  FC 00 02 10 */	fabs f0, f0
/* 805F0678  FC 00 00 18 */	frsp f0, f0
/* 805F067C  D0 03 1C CC */	stfs f0, 0x1ccc(r3)
/* 805F0680  C0 23 1C B8 */	lfs f1, 0x1cb8(r3)
/* 805F0684  C0 03 1C A0 */	lfs f0, 0x1ca0(r3)
/* 805F0688  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F068C  FC 00 02 10 */	fabs f0, f0
/* 805F0690  FC 00 00 18 */	frsp f0, f0
/* 805F0694  D0 03 1C D0 */	stfs f0, 0x1cd0(r3)
/* 805F0698  C0 23 1C BC */	lfs f1, 0x1cbc(r3)
/* 805F069C  C0 03 1C A4 */	lfs f0, 0x1ca4(r3)
/* 805F06A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F06A4  FC 00 02 10 */	fabs f0, f0
/* 805F06A8  FC 00 00 18 */	frsp f0, f0
/* 805F06AC  D0 03 1C D4 */	stfs f0, 0x1cd4(r3)
/* 805F06B0  3C 80 80 5F */	lis r4, lit_3794@ha /* 0x805F41A4@ha */
/* 805F06B4  C0 04 41 A4 */	lfs f0, lit_3794@l(r4)  /* 0x805F41A4@l */
/* 805F06B8  D0 03 1C DC */	stfs f0, 0x1cdc(r3)
/* 805F06BC  4E 80 00 20 */	blr 
