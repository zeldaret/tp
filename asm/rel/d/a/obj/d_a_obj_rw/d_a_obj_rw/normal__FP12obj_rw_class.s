lbl_80CC2E60:
/* 80CC2E60  A8 03 06 64 */	lha r0, 0x664(r3)
/* 80CC2E64  2C 00 00 00 */	cmpwi r0, 0
/* 80CC2E68  4C 82 00 20 */	bnelr 
/* 80CC2E6C  38 00 00 01 */	li r0, 1
/* 80CC2E70  B0 03 06 64 */	sth r0, 0x664(r3)
/* 80CC2E74  4E 80 00 20 */	blr 
