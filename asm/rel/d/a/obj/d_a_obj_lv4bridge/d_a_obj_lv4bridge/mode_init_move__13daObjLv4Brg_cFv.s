lbl_80C62CE4:
/* 80C62CE4  3C 80 80 C6 */	lis r4, lit_3653@ha /* 0x80C63170@ha */
/* 80C62CE8  C0 04 31 70 */	lfs f0, lit_3653@l(r4)  /* 0x80C63170@l */
/* 80C62CEC  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80C62CF0  38 00 00 01 */	li r0, 1
/* 80C62CF4  98 03 05 C1 */	stb r0, 0x5c1(r3)
/* 80C62CF8  4E 80 00 20 */	blr 
