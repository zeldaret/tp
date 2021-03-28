lbl_80BE4A70:
/* 80BE4A70  A8 83 00 00 */	lha r4, 0(r3)
/* 80BE4A74  2C 04 00 00 */	cmpwi r4, 0
/* 80BE4A78  41 82 00 0C */	beq lbl_80BE4A84
/* 80BE4A7C  38 04 FF FF */	addi r0, r4, -1
/* 80BE4A80  B0 03 00 00 */	sth r0, 0(r3)
lbl_80BE4A84:
/* 80BE4A84  A8 63 00 00 */	lha r3, 0(r3)
/* 80BE4A88  4E 80 00 20 */	blr 
