lbl_8029BE2C:
/* 8029BE2C  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8029BE30  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8029BE34  80 03 00 04 */	lwz r0, 4(r3)
/* 8029BE38  2C 00 00 01 */	cmpwi r0, 1
/* 8029BE3C  41 82 00 24 */	beq lbl_8029BE60
/* 8029BE40  4C 80 00 20 */	bgelr 
/* 8029BE44  2C 00 00 00 */	cmpwi r0, 0
/* 8029BE48  4D 80 00 20 */	bltlr 
/* 8029BE4C  3C 80 80 43 */	lis r4, sFreeRunLfo__6JASLfo@ha
/* 8029BE50  38 84 1C 40 */	addi r4, r4, sFreeRunLfo__6JASLfo@l
/* 8029BE54  C0 04 00 08 */	lfs f0, 8(r4)
/* 8029BE58  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BE5C  4E 80 00 20 */	blr 
lbl_8029BE60:
/* 8029BE60  C0 02 BC E0 */	lfs f0, lit_341(r2)
/* 8029BE64  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BE68  4E 80 00 20 */	blr 
