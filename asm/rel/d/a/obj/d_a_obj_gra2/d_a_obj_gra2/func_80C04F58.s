lbl_80C04F58:
/* 80C04F58  A8 83 00 00 */	lha r4, 0(r3)
/* 80C04F5C  2C 04 00 00 */	cmpwi r4, 0
/* 80C04F60  41 82 00 0C */	beq lbl_80C04F6C
/* 80C04F64  38 04 FF FF */	addi r0, r4, -1
/* 80C04F68  B0 03 00 00 */	sth r0, 0(r3)
lbl_80C04F6C:
/* 80C04F6C  A8 63 00 00 */	lha r3, 0(r3)
/* 80C04F70  4E 80 00 20 */	blr 
