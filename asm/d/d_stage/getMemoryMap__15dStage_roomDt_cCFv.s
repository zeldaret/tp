lbl_80027BC8:
/* 80027BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027BCC  7C 08 02 A6 */	mflr r0
/* 80027BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027BD4  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027BD8  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80027BDC  38 63 02 D2 */	addi r3, r3, 0x2d2
/* 80027BE0  4C C6 31 82 */	crclr 6
/* 80027BE4  4B FD EE D9 */	bl OSReport
/* 80027BE8  38 60 00 00 */	li r3, 0
/* 80027BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027BF0  7C 08 03 A6 */	mtlr r0
/* 80027BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80027BF8  4E 80 00 20 */	blr 
