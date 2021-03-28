lbl_8048D324:
/* 8048D324  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048D328  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 8048D32C  28 00 0F FF */	cmplwi r0, 0xfff
/* 8048D330  38 60 FF FF */	li r3, -1
/* 8048D334  4D 82 00 20 */	beqlr 
/* 8048D338  7C 03 03 78 */	mr r3, r0
/* 8048D33C  4E 80 00 20 */	blr 
