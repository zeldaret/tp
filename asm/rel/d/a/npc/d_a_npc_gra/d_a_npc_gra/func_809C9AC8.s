lbl_809C9AC8:
/* 809C9AC8  A8 83 00 00 */	lha r4, 0(r3)
/* 809C9ACC  2C 04 00 00 */	cmpwi r4, 0
/* 809C9AD0  41 82 00 0C */	beq lbl_809C9ADC
/* 809C9AD4  38 04 FF FF */	addi r0, r4, -1
/* 809C9AD8  B0 03 00 00 */	sth r0, 0(r3)
lbl_809C9ADC:
/* 809C9ADC  A8 63 00 00 */	lha r3, 0(r3)
/* 809C9AE0  4E 80 00 20 */	blr 
