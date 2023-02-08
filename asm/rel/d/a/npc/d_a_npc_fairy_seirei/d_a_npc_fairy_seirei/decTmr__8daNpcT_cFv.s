lbl_80541ADC:
/* 80541ADC  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80541AE0  2C 04 00 00 */	cmpwi r4, 0
/* 80541AE4  4D 82 00 20 */	beqlr 
/* 80541AE8  38 04 FF FF */	addi r0, r4, -1
/* 80541AEC  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80541AF0  4E 80 00 20 */	blr 
