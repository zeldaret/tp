lbl_800BDE20:
/* 800BDE20  2C 04 00 00 */	cmpwi r4, 0
/* 800BDE24  4C 81 00 20 */	blelr 
/* 800BDE28  2C 04 00 80 */	cmpwi r4, 0x80
/* 800BDE2C  41 80 00 08 */	blt lbl_800BDE34
/* 800BDE30  38 80 00 7F */	li r4, 0x7f
lbl_800BDE34:
/* 800BDE34  80 65 00 00 */	lwz r3, 0(r5)
/* 800BDE38  54 80 20 36 */	slwi r0, r4, 4
/* 800BDE3C  7C 60 03 78 */	or r0, r3, r0
/* 800BDE40  90 05 00 00 */	stw r0, 0(r5)
/* 800BDE44  4E 80 00 20 */	blr 
