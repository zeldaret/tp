lbl_80027A20:
/* 80027A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027A24  7C 08 02 A6 */	mflr r0
/* 80027A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027A2C  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80027A30  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80027A34  38 63 02 88 */	addi r3, r3, 0x288
/* 80027A38  4C C6 31 82 */	crclr 6
/* 80027A3C  4B FD F0 81 */	bl OSReport
/* 80027A40  38 60 00 00 */	li r3, 0
/* 80027A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027A48  7C 08 03 A6 */	mtlr r0
/* 80027A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80027A50  4E 80 00 20 */	blr 
