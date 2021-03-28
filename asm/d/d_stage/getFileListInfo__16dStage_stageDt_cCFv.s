lbl_80028114:
/* 80028114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028118  7C 08 02 A6 */	mflr r0
/* 8002811C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028120  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80028124  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80028128  38 63 03 C3 */	addi r3, r3, 0x3c3
/* 8002812C  4C C6 31 82 */	crclr 6
/* 80028130  4B FD E9 8D */	bl OSReport
/* 80028134  38 60 00 00 */	li r3, 0
/* 80028138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002813C  7C 08 03 A6 */	mtlr r0
/* 80028140  38 21 00 10 */	addi r1, r1, 0x10
/* 80028144  4E 80 00 20 */	blr 
