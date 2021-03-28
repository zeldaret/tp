lbl_800B1FB8:
/* 800B1FB8  38 60 00 00 */	li r3, 0
/* 800B1FBC  7C 80 07 34 */	extsh r0, r4
/* 800B1FC0  2C 00 00 7B */	cmpwi r0, 0x7b
/* 800B1FC4  41 82 00 0C */	beq lbl_800B1FD0
/* 800B1FC8  2C 00 00 7D */	cmpwi r0, 0x7d
/* 800B1FCC  4C 82 00 20 */	bnelr 
lbl_800B1FD0:
/* 800B1FD0  38 60 00 01 */	li r3, 1
/* 800B1FD4  4E 80 00 20 */	blr 
