lbl_80498A78:
/* 80498A78  3C 80 80 4A */	lis r4, lit_3627@ha
/* 80498A7C  C0 44 9A 6C */	lfs f2, lit_3627@l(r4)
/* 80498A80  3C 80 80 4A */	lis r4, lit_3628@ha
/* 80498A84  C0 04 9A 70 */	lfs f0, lit_3628@l(r4)
/* 80498A88  48 00 00 10 */	b lbl_80498A98
lbl_80498A8C:
/* 80498A8C  C0 23 00 00 */	lfs f1, 0(r3)
/* 80498A90  EC 21 10 2A */	fadds f1, f1, f2
/* 80498A94  D0 23 00 00 */	stfs f1, 0(r3)
lbl_80498A98:
/* 80498A98  C0 23 00 00 */	lfs f1, 0(r3)
/* 80498A9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80498AA0  41 80 FF EC */	blt lbl_80498A8C
/* 80498AA4  3C 80 80 4A */	lis r4, lit_3627@ha
/* 80498AA8  C0 24 9A 6C */	lfs f1, lit_3627@l(r4)
/* 80498AAC  48 00 00 10 */	b lbl_80498ABC
lbl_80498AB0:
/* 80498AB0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80498AB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80498AB8  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80498ABC:
/* 80498ABC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80498AC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80498AC4  41 81 FF EC */	bgt lbl_80498AB0
/* 80498AC8  4E 80 00 20 */	blr 
