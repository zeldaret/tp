lbl_80B2E678:
/* 80B2E678  A8 03 05 A8 */	lha r0, 0x5a8(r3)
/* 80B2E67C  2C 00 00 01 */	cmpwi r0, 1
/* 80B2E680  41 82 00 24 */	beq lbl_80B2E6A4
/* 80B2E684  4C 80 00 20 */	bgelr 
/* 80B2E688  2C 00 00 00 */	cmpwi r0, 0
/* 80B2E68C  4D 80 00 20 */	bltlr 
/* 80B2E690  38 00 00 00 */	li r0, 0
/* 80B2E694  98 03 05 E6 */	stb r0, 0x5e6(r3)
/* 80B2E698  38 00 00 01 */	li r0, 1
/* 80B2E69C  B0 03 05 A8 */	sth r0, 0x5a8(r3)
/* 80B2E6A0  4E 80 00 20 */	blr 
lbl_80B2E6A4:
/* 80B2E6A4  88 03 05 6C */	lbz r0, 0x56c(r3)
/* 80B2E6A8  28 00 00 01 */	cmplwi r0, 1
/* 80B2E6AC  4C 82 00 20 */	bnelr 
/* 80B2E6B0  38 00 00 01 */	li r0, 1
/* 80B2E6B4  B0 03 05 A6 */	sth r0, 0x5a6(r3)
/* 80B2E6B8  38 00 FF FF */	li r0, -1
/* 80B2E6BC  B0 03 05 A8 */	sth r0, 0x5a8(r3)
/* 80B2E6C0  4E 80 00 20 */	blr 
