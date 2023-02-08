lbl_80B43E1C:
/* 80B43E1C  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B43E20  2C 00 00 01 */	cmpwi r0, 1
/* 80B43E24  4E 80 00 20 */	blr 
