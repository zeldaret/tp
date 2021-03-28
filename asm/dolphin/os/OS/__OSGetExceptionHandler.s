lbl_8033A704:
/* 8033A704  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8033A708  80 6D 90 A4 */	lwz r3, OSExceptionTable(r13)
/* 8033A70C  54 00 10 3A */	slwi r0, r0, 2
/* 8033A710  7C 63 00 2E */	lwzx r3, r3, r0
/* 8033A714  4E 80 00 20 */	blr 
