lbl_8049DC58:
/* 8049DC58  A8 83 00 00 */	lha r4, 0(r3)
/* 8049DC5C  2C 04 00 00 */	cmpwi r4, 0
/* 8049DC60  41 82 00 0C */	beq lbl_8049DC6C
/* 8049DC64  38 04 FF FF */	addi r0, r4, -1
/* 8049DC68  B0 03 00 00 */	sth r0, 0(r3)
lbl_8049DC6C:
/* 8049DC6C  A8 63 00 00 */	lha r3, 0(r3)
/* 8049DC70  4E 80 00 20 */	blr 
