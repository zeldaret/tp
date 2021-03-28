lbl_80C1EBDC:
/* 80C1EBDC  3C 80 80 43 */	lis r4, Zero__4cXyz@ha
/* 80C1EBE0  C4 04 0C F4 */	lfsu f0, Zero__4cXyz@l(r4)
/* 80C1EBE4  D0 03 05 AC */	stfs f0, 0x5ac(r3)
/* 80C1EBE8  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C1EBEC  D0 03 05 B0 */	stfs f0, 0x5b0(r3)
/* 80C1EBF0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C1EBF4  D0 03 05 B4 */	stfs f0, 0x5b4(r3)
/* 80C1EBF8  3C 80 80 45 */	lis r4, Zero__5csXyz@ha
/* 80C1EBFC  AC 04 11 60 */	lhau r0, Zero__5csXyz@l(r4)
/* 80C1EC00  B0 03 05 B8 */	sth r0, 0x5b8(r3)
/* 80C1EC04  A8 04 00 02 */	lha r0, 2(r4)
/* 80C1EC08  B0 03 05 BA */	sth r0, 0x5ba(r3)
/* 80C1EC0C  A8 04 00 04 */	lha r0, 4(r4)
/* 80C1EC10  B0 03 05 BC */	sth r0, 0x5bc(r3)
/* 80C1EC14  88 03 05 BF */	lbz r0, 0x5bf(r3)
/* 80C1EC18  28 00 00 00 */	cmplwi r0, 0
/* 80C1EC1C  4D 82 00 20 */	beqlr 
/* 80C1EC20  3C 80 80 C2 */	lis r4, lit_3985@ha
/* 80C1EC24  C0 04 EE 84 */	lfs f0, lit_3985@l(r4)
/* 80C1EC28  D0 03 05 C4 */	stfs f0, 0x5c4(r3)
/* 80C1EC2C  38 00 00 01 */	li r0, 1
/* 80C1EC30  98 03 05 BE */	stb r0, 0x5be(r3)
/* 80C1EC34  98 03 05 C8 */	stb r0, 0x5c8(r3)
/* 80C1EC38  38 00 00 00 */	li r0, 0
/* 80C1EC3C  B0 03 05 CA */	sth r0, 0x5ca(r3)
/* 80C1EC40  4E 80 00 20 */	blr 
