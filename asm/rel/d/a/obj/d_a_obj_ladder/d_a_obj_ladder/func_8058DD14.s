lbl_8058DD14:
/* 8058DD14  80 C3 00 B0 */	lwz r6, 0xb0(r3)
/* 8058DD18  38 00 00 01 */	li r0, 1
/* 8058DD1C  7C 03 20 30 */	slw r3, r0, r4
/* 8058DD20  38 63 FF FF */	addi r3, r3, -1
/* 8058DD24  7C C0 2C 30 */	srw r0, r6, r5
/* 8058DD28  7C 63 00 38 */	and r3, r3, r0
/* 8058DD2C  4E 80 00 20 */	blr 
