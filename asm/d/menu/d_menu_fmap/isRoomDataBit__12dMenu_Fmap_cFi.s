lbl_801CCA98:
/* 801CCA98  7C 80 2E 70 */	srawi r0, r4, 5
/* 801CCA9C  54 00 10 3A */	slwi r0, r0, 2
/* 801CCAA0  7C 63 02 14 */	add r3, r3, r0
/* 801CCAA4  80 A3 01 F8 */	lwz r5, 0x1f8(r3)
/* 801CCAA8  38 60 00 01 */	li r3, 1
/* 801CCAAC  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 801CCAB0  7C 60 00 30 */	slw r0, r3, r0
/* 801CCAB4  7C A3 00 38 */	and r3, r5, r0
/* 801CCAB8  30 03 FF FF */	addic r0, r3, -1
/* 801CCABC  7C 60 19 10 */	subfe r3, r0, r3
/* 801CCAC0  4E 80 00 20 */	blr 
