lbl_8057CAD4:
/* 8057CAD4  80 C3 00 B0 */	lwz r6, 0xb0(r3)
/* 8057CAD8  38 00 00 01 */	li r0, 1
/* 8057CADC  7C 03 20 30 */	slw r3, r0, r4
/* 8057CAE0  38 63 FF FF */	addi r3, r3, -1
/* 8057CAE4  7C C0 2C 30 */	srw r0, r6, r5
/* 8057CAE8  7C 63 00 38 */	and r3, r3, r0
/* 8057CAEC  4E 80 00 20 */	blr 
