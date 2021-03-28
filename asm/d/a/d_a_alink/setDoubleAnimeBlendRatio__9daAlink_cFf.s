lbl_800AC738:
/* 800AC738  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AC73C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AC740  D0 03 1F 28 */	stfs f0, 0x1f28(r3)
/* 800AC744  D0 23 1F 30 */	stfs f1, 0x1f30(r3)
/* 800AC748  D0 03 1F 40 */	stfs f0, 0x1f40(r3)
/* 800AC74C  D0 23 1F 48 */	stfs f1, 0x1f48(r3)
/* 800AC750  4E 80 00 20 */	blr 
