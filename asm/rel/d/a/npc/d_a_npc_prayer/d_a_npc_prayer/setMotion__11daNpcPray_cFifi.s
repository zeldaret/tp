lbl_80AB3BDC:
/* 80AB3BDC  7C 86 07 34 */	extsh r6, r4
/* 80AB3BE0  2C 05 00 00 */	cmpwi r5, 0
/* 80AB3BE4  40 82 00 10 */	bne lbl_80AB3BF4
/* 80AB3BE8  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80AB3BEC  7C 00 30 00 */	cmpw r0, r6
/* 80AB3BF0  4D 82 00 20 */	beqlr 
lbl_80AB3BF4:
/* 80AB3BF4  2C 04 00 00 */	cmpwi r4, 0
/* 80AB3BF8  4D 80 00 20 */	bltlr 
/* 80AB3BFC  2C 04 00 04 */	cmpwi r4, 4
/* 80AB3C00  4C 80 00 20 */	bgelr 
/* 80AB3C04  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80AB3C08  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80AB3C0C  38 00 FF FF */	li r0, -1
/* 80AB3C10  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80AB3C14  38 00 00 00 */	li r0, 0
/* 80AB3C18  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80AB3C1C  B0 03 0E 0A */	sth r0, 0xe0a(r3)
/* 80AB3C20  4E 80 00 20 */	blr 
