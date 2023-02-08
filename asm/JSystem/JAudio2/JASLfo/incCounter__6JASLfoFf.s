lbl_8029BDD8:
/* 8029BDD8  A0 83 00 16 */	lhz r4, 0x16(r3)
/* 8029BDDC  28 04 00 00 */	cmplwi r4, 0
/* 8029BDE0  41 82 00 10 */	beq lbl_8029BDF0
/* 8029BDE4  38 04 FF FF */	addi r0, r4, -1
/* 8029BDE8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8029BDEC  4E 80 00 20 */	blr 
lbl_8029BDF0:
/* 8029BDF0  C0 63 00 08 */	lfs f3, 8(r3)
/* 8029BDF4  C0 42 BC F0 */	lfs f2, lit_376(r2)
/* 8029BDF8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8029BDFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8029BE00  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BE04  EC 03 00 2A */	fadds f0, f3, f0
/* 8029BE08  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BE0C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8029BE10  C0 02 BC E4 */	lfs f0, lit_342(r2)
/* 8029BE14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029BE18  4C 41 13 82 */	cror 2, 1, 2
/* 8029BE1C  4C 82 00 20 */	bnelr 
/* 8029BE20  EC 01 00 28 */	fsubs f0, f1, f0
/* 8029BE24  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BE28  4E 80 00 20 */	blr 
