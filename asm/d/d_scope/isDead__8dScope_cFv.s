lbl_80193FA0:
/* 80193FA0  88 63 00 8E */	lbz r3, 0x8e(r3)
/* 80193FA4  30 03 FF FF */	addic r0, r3, -1
/* 80193FA8  7C 00 19 10 */	subfe r0, r0, r3
/* 80193FAC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80193FB0  4E 80 00 20 */	blr 
