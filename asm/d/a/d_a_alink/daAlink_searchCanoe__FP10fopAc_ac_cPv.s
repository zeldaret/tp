lbl_800F3CD8:
/* 800F3CD8  A8 03 00 08 */	lha r0, 8(r3)
/* 800F3CDC  2C 00 00 ED */	cmpwi r0, 0xed
/* 800F3CE0  40 82 00 10 */	bne lbl_800F3CF0
/* 800F3CE4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800F3CE8  28 00 00 00 */	cmplwi r0, 0
/* 800F3CEC  4C 82 00 20 */	bnelr 
lbl_800F3CF0:
/* 800F3CF0  38 60 00 00 */	li r3, 0
/* 800F3CF4  4E 80 00 20 */	blr 
