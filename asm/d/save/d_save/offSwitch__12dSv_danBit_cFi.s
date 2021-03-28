lbl_80034BC0:
/* 80034BC0  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034BC4  54 00 10 3A */	slwi r0, r0, 2
/* 80034BC8  7C C3 02 14 */	add r6, r3, r0
/* 80034BCC  80 A6 00 04 */	lwz r5, 4(r6)
/* 80034BD0  38 60 00 01 */	li r3, 1
/* 80034BD4  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034BD8  7C 60 00 30 */	slw r0, r3, r0
/* 80034BDC  7C A0 00 78 */	andc r0, r5, r0
/* 80034BE0  90 06 00 04 */	stw r0, 4(r6)
/* 80034BE4  4E 80 00 20 */	blr 
