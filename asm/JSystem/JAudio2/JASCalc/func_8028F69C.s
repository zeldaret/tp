lbl_8028F69C:
/* 8028F69C  2C 03 80 00 */	cmpwi r3, -32768
/* 8028F6A0  41 81 00 0C */	bgt lbl_8028F6AC
/* 8028F6A4  38 60 80 00 */	li r3, -32768
/* 8028F6A8  4E 80 00 20 */	blr 
lbl_8028F6AC:
/* 8028F6AC  2C 03 7F FF */	cmpwi r3, 0x7fff
/* 8028F6B0  38 00 7F FF */	li r0, 0x7fff
/* 8028F6B4  40 80 00 08 */	bge lbl_8028F6BC
/* 8028F6B8  7C 60 07 34 */	extsh r0, r3
lbl_8028F6BC:
/* 8028F6BC  7C 03 03 78 */	mr r3, r0
/* 8028F6C0  4E 80 00 20 */	blr 
