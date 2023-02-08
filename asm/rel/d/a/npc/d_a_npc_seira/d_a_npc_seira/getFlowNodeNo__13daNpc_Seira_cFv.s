lbl_80ACC424:
/* 80ACC424  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80ACC428  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80ACC42C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80ACC430  38 60 FF FF */	li r3, -1
/* 80ACC434  4D 82 00 20 */	beqlr 
/* 80ACC438  7C 03 03 78 */	mr r3, r0
/* 80ACC43C  4E 80 00 20 */	blr 
