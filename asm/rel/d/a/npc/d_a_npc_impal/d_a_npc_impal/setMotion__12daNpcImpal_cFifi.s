lbl_80A099B4:
/* 80A099B4  7C 86 07 34 */	extsh r6, r4
/* 80A099B8  2C 05 00 00 */	cmpwi r5, 0
/* 80A099BC  40 82 00 10 */	bne lbl_80A099CC
/* 80A099C0  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A099C4  7C 00 30 00 */	cmpw r0, r6
/* 80A099C8  4D 82 00 20 */	beqlr 
lbl_80A099CC:
/* 80A099CC  2C 04 00 00 */	cmpwi r4, 0
/* 80A099D0  4D 80 00 20 */	bltlr 
/* 80A099D4  2C 04 00 07 */	cmpwi r4, 7
/* 80A099D8  4C 80 00 20 */	bgelr 
/* 80A099DC  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80A099E0  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80A099E4  38 00 FF FF */	li r0, -1
/* 80A099E8  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80A099EC  38 00 00 00 */	li r0, 0
/* 80A099F0  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80A099F4  4E 80 00 20 */	blr 
