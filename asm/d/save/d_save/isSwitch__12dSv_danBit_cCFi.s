lbl_80034BE8:
/* 80034BE8  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034BEC  54 00 10 3A */	slwi r0, r0, 2
/* 80034BF0  7C 63 02 14 */	add r3, r3, r0
/* 80034BF4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80034BF8  38 60 00 01 */	li r3, 1
/* 80034BFC  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034C00  7C 60 00 30 */	slw r0, r3, r0
/* 80034C04  7C A3 00 38 */	and r3, r5, r0
/* 80034C08  30 03 FF FF */	addic r0, r3, -1
/* 80034C0C  7C 60 19 10 */	subfe r3, r0, r3
/* 80034C10  4E 80 00 20 */	blr 
