lbl_80027A88:
/* 80027A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027A8C  7C 08 02 A6 */	mflr r0
/* 80027A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027A94  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80027A98  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80027A9C  38 63 02 9E */	addi r3, r3, 0x29e
/* 80027AA0  4C C6 31 82 */	crclr 6
/* 80027AA4  4B FD F0 19 */	bl OSReport
/* 80027AA8  38 60 00 00 */	li r3, 0
/* 80027AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027AB0  7C 08 03 A6 */	mtlr r0
/* 80027AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80027AB8  4E 80 00 20 */	blr 
