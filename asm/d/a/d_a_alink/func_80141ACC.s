lbl_80141ACC:
/* 80141ACC  80 C3 00 B0 */	lwz r6, 0xb0(r3)
/* 80141AD0  38 00 00 01 */	li r0, 1
/* 80141AD4  7C 03 20 30 */	slw r3, r0, r4
/* 80141AD8  38 63 FF FF */	addi r3, r3, -1
/* 80141ADC  7C C0 2C 30 */	srw r0, r6, r5
/* 80141AE0  7C 63 00 38 */	and r3, r3, r0
/* 80141AE4  4E 80 00 20 */	blr 
