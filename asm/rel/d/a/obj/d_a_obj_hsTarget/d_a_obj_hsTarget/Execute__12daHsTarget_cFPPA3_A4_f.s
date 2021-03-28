lbl_80C1F6B0:
/* 80C1F6B0  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80C1F6B4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C1F6B8  90 04 00 00 */	stw r0, 0(r4)
/* 80C1F6BC  38 60 00 01 */	li r3, 1
/* 80C1F6C0  4E 80 00 20 */	blr 
