lbl_80484CE4:
/* 80484CE4  80 C3 00 B0 */	lwz r6, 0xb0(r3)
/* 80484CE8  38 00 00 01 */	li r0, 1
/* 80484CEC  7C 03 20 30 */	slw r3, r0, r4
/* 80484CF0  38 63 FF FF */	addi r3, r3, -1
/* 80484CF4  7C C0 2C 30 */	srw r0, r6, r5
/* 80484CF8  7C 63 00 38 */	and r3, r3, r0
/* 80484CFC  4E 80 00 20 */	blr 
