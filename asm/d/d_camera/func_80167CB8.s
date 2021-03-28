lbl_80167CB8:
/* 80167CB8  38 00 00 00 */	li r0, 0
/* 80167CBC  A8 63 00 08 */	lha r3, 8(r3)
/* 80167CC0  2C 03 00 FD */	cmpwi r3, 0xfd
/* 80167CC4  41 82 00 08 */	beq lbl_80167CCC
/* 80167CC8  40 82 00 08 */	bne lbl_80167CD0
lbl_80167CCC:
/* 80167CCC  38 00 00 01 */	li r0, 1
lbl_80167CD0:
/* 80167CD0  7C 03 03 78 */	mr r3, r0
/* 80167CD4  4E 80 00 20 */	blr 
