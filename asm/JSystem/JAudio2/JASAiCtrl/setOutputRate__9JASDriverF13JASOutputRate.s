lbl_8029C524:
/* 8029C524  90 6D 8D 40 */	stw r3, sOutputRate__9JASDriver(r13)
/* 8029C528  2C 03 00 00 */	cmpwi r3, 0
/* 8029C52C  40 82 00 18 */	bne lbl_8029C544
/* 8029C530  38 00 00 07 */	li r0, 7
/* 8029C534  90 0D 82 34 */	stw r0, sSubFrames__9JASDriver(r13)
/* 8029C538  C0 02 BD 20 */	lfs f0, lit_233(r2)
/* 8029C53C  D0 0D 82 30 */	stfs f0, sDacRate__9JASDriver(r13)
/* 8029C540  48 00 00 14 */	b lbl_8029C554
lbl_8029C544:
/* 8029C544  38 00 00 0A */	li r0, 0xa
/* 8029C548  90 0D 82 34 */	stw r0, sSubFrames__9JASDriver(r13)
/* 8029C54C  C0 02 BD 24 */	lfs f0, lit_234(r2)
/* 8029C550  D0 0D 82 30 */	stfs f0, sDacRate__9JASDriver(r13)
lbl_8029C554:
/* 8029C554  C0 2D 82 30 */	lfs f1, sDacRate__9JASDriver(r13)
/* 8029C558  C0 02 BD 28 */	lfs f0, lit_235(r2)
/* 8029C55C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029C560  D0 0D 82 30 */	stfs f0, sDacRate__9JASDriver(r13)
/* 8029C564  4E 80 00 20 */	blr 
