lbl_809AA084:
/* 809AA084  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 809AA088  2C 04 00 00 */	cmpwi r4, 0
/* 809AA08C  4D 82 00 20 */	beqlr 
/* 809AA090  38 04 FF FF */	addi r0, r4, -1
/* 809AA094  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 809AA098  4E 80 00 20 */	blr 
