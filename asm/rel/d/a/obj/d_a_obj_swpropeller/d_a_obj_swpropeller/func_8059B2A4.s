lbl_8059B2A4:
/* 8059B2A4  A8 83 00 00 */	lha r4, 0(r3)
/* 8059B2A8  2C 04 00 00 */	cmpwi r4, 0
/* 8059B2AC  41 82 00 0C */	beq lbl_8059B2B8
/* 8059B2B0  38 04 FF FF */	addi r0, r4, -1
/* 8059B2B4  B0 03 00 00 */	sth r0, 0(r3)
lbl_8059B2B8:
/* 8059B2B8  A8 63 00 00 */	lha r3, 0(r3)
/* 8059B2BC  4E 80 00 20 */	blr 
