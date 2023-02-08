lbl_80AF0A38:
/* 80AF0A38  7C 86 07 34 */	extsh r6, r4
/* 80AF0A3C  2C 05 00 00 */	cmpwi r5, 0
/* 80AF0A40  40 82 00 10 */	bne lbl_80AF0A50
/* 80AF0A44  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80AF0A48  7C 00 30 00 */	cmpw r0, r6
/* 80AF0A4C  4D 82 00 20 */	beqlr 
lbl_80AF0A50:
/* 80AF0A50  2C 04 00 00 */	cmpwi r4, 0
/* 80AF0A54  4D 80 00 20 */	bltlr 
/* 80AF0A58  2C 04 00 06 */	cmpwi r4, 6
/* 80AF0A5C  4C 80 00 20 */	bgelr 
/* 80AF0A60  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80AF0A64  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80AF0A68  38 00 FF FF */	li r0, -1
/* 80AF0A6C  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80AF0A70  38 00 00 00 */	li r0, 0
/* 80AF0A74  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80AF0A78  4E 80 00 20 */	blr 
