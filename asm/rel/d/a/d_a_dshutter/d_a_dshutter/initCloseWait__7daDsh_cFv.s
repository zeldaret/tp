lbl_80467A64:
/* 80467A64  C0 23 04 AC */	lfs f1, 0x4ac(r3)
/* 80467A68  3C 80 80 45 */	lis r4, OPEN_SIZE__7daDsh_c@ha
/* 80467A6C  C0 04 1D 30 */	lfs f0, OPEN_SIZE__7daDsh_c@l(r4)
/* 80467A70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80467A74  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80467A78  38 60 00 01 */	li r3, 1
/* 80467A7C  4E 80 00 20 */	blr 
