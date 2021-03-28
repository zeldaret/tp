lbl_8001EAC4:
/* 8001EAC4  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8001EAC8  28 00 7F FF */	cmplwi r0, 0x7fff
/* 8001EACC  4D 81 00 20 */	bgtlr 
/* 8001EAD0  B0 83 00 06 */	sth r4, 6(r3)
/* 8001EAD4  4E 80 00 20 */	blr 
