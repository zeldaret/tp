lbl_801FCD0C:
/* 801FCD0C  88 63 01 45 */	lbz r3, 0x145(r3)
/* 801FCD10  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801FCD14  7C 63 00 38 */	and r3, r3, r0
/* 801FCD18  30 03 FF FF */	addic r0, r3, -1
/* 801FCD1C  7C 60 19 10 */	subfe r3, r0, r3
/* 801FCD20  4E 80 00 20 */	blr 
