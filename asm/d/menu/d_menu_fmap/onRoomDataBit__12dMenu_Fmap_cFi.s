lbl_801CCA70:
/* 801CCA70  7C 80 2E 70 */	srawi r0, r4, 5
/* 801CCA74  54 00 10 3A */	slwi r0, r0, 2
/* 801CCA78  7C C3 02 14 */	add r6, r3, r0
/* 801CCA7C  80 A6 01 F8 */	lwz r5, 0x1f8(r6)
/* 801CCA80  38 60 00 01 */	li r3, 1
/* 801CCA84  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 801CCA88  7C 60 00 30 */	slw r0, r3, r0
/* 801CCA8C  7C A0 03 78 */	or r0, r5, r0
/* 801CCA90  90 06 01 F8 */	stw r0, 0x1f8(r6)
/* 801CCA94  4E 80 00 20 */	blr 
