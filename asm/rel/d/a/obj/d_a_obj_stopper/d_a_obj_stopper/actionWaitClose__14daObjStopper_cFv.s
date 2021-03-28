lbl_80CEE04C:
/* 80CEE04C  3C 80 80 CF */	lis r4, lit_3692@ha
/* 80CEE050  C0 04 EF A8 */	lfs f0, lit_3692@l(r4)
/* 80CEE054  D0 03 09 50 */	stfs f0, 0x950(r3)
/* 80CEE058  4E 80 00 20 */	blr 
