lbl_80034EF8:
/* 80034EF8  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034EFC  54 07 10 3A */	slwi r7, r0, 2
/* 80034F00  7C C3 38 2E */	lwzx r6, r3, r7
/* 80034F04  38 A0 00 01 */	li r5, 1
/* 80034F08  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034F0C  7C A0 00 30 */	slw r0, r5, r0
/* 80034F10  7C C0 00 78 */	andc r0, r6, r0
/* 80034F14  7C 03 39 2E */	stwx r0, r3, r7
/* 80034F18  4E 80 00 20 */	blr 
