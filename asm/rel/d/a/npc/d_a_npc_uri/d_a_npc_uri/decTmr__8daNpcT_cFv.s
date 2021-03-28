lbl_80B2CA84:
/* 80B2CA84  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 80B2CA88  2C 04 00 00 */	cmpwi r4, 0
/* 80B2CA8C  4D 82 00 20 */	beqlr 
/* 80B2CA90  38 04 FF FF */	addi r0, r4, -1
/* 80B2CA94  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 80B2CA98  4E 80 00 20 */	blr 
