lbl_8024DAB0:
/* 8024DAB0  80 83 00 00 */	lwz r4, 0(r3)
/* 8024DAB4  2C 04 00 00 */	cmpwi r4, 0
/* 8024DAB8  41 82 00 0C */	beq lbl_8024DAC4
/* 8024DABC  38 04 FF FF */	addi r0, r4, -1
/* 8024DAC0  90 03 00 00 */	stw r0, 0(r3)
lbl_8024DAC4:
/* 8024DAC4  80 63 00 00 */	lwz r3, 0(r3)
/* 8024DAC8  4E 80 00 20 */	blr 
