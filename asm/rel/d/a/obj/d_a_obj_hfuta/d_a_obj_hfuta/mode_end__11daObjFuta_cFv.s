lbl_80C1ECB4:
/* 80C1ECB4  3C 80 80 C2 */	lis r4, lit_3995@ha
/* 80C1ECB8  C0 04 EE 88 */	lfs f0, lit_3995@l(r4)
/* 80C1ECBC  D0 03 05 AC */	stfs f0, 0x5ac(r3)
/* 80C1ECC0  4E 80 00 20 */	blr 
