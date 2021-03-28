lbl_80027FB4:
/* 80027FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027FB8  7C 08 02 A6 */	mflr r0
/* 80027FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027FC0  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80027FC4  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80027FC8  38 63 03 89 */	addi r3, r3, 0x389
/* 80027FCC  4C C6 31 82 */	crclr 6
/* 80027FD0  4B FD EA ED */	bl OSReport
/* 80027FD4  38 60 00 00 */	li r3, 0
/* 80027FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027FDC  7C 08 03 A6 */	mtlr r0
/* 80027FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80027FE4  4E 80 00 20 */	blr 
