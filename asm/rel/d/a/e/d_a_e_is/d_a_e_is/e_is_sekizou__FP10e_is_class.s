lbl_806F6B68:
/* 806F6B68  3C 80 80 6F */	lis r4, lit_3666@ha
/* 806F6B6C  C0 04 7B 80 */	lfs f0, lit_3666@l(r4)
/* 806F6B70  80 63 05 C8 */	lwz r3, 0x5c8(r3)
/* 806F6B74  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806F6B78  4E 80 00 20 */	blr 
