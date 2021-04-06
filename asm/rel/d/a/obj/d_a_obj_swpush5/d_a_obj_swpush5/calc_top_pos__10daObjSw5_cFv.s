lbl_8059BF54:
/* 8059BF54  3C 80 80 5A */	lis r4, l_dzbIdx@ha /* 0x8059C6A4@ha */
/* 8059BF58  38 84 C6 A4 */	addi r4, r4, l_dzbIdx@l /* 0x8059C6A4@l */
/* 8059BF5C  C0 63 04 FC */	lfs f3, 0x4fc(r3)
/* 8059BF60  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8059BF64  C0 23 05 F8 */	lfs f1, 0x5f8(r3)
/* 8059BF68  C0 03 05 FC */	lfs f0, 0x5fc(r3)
/* 8059BF6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059BF70  EC 02 00 32 */	fmuls f0, f2, f0
/* 8059BF74  EC 03 00 28 */	fsubs f0, f3, f0
/* 8059BF78  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 8059BF7C  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 8059BF80  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8059BF84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059BF88  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059BF8C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 8059BF90  C0 23 05 F8 */	lfs f1, 0x5f8(r3)
/* 8059BF94  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 8059BF98  EC 01 00 2A */	fadds f0, f1, f0
/* 8059BF9C  D0 03 05 F8 */	stfs f0, 0x5f8(r3)
/* 8059BFA0  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 8059BFA4  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 8059BFA8  C0 03 05 F8 */	lfs f0, 0x5f8(r3)
/* 8059BFAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059BFB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8059BFB4  D0 03 05 F4 */	stfs f0, 0x5f4(r3)
/* 8059BFB8  C0 03 05 F4 */	lfs f0, 0x5f4(r3)
/* 8059BFBC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8059BFC0  40 80 00 08 */	bge lbl_8059BFC8
/* 8059BFC4  48 00 00 18 */	b lbl_8059BFDC
lbl_8059BFC8:
/* 8059BFC8  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8059BFCC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8059BFD0  40 81 00 08 */	ble lbl_8059BFD8
/* 8059BFD4  48 00 00 08 */	b lbl_8059BFDC
lbl_8059BFD8:
/* 8059BFD8  FC 40 00 90 */	fmr f2, f0
lbl_8059BFDC:
/* 8059BFDC  D0 43 05 F4 */	stfs f2, 0x5f4(r3)
/* 8059BFE0  4E 80 00 20 */	blr 
