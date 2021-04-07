lbl_80027D70:
/* 80027D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027D74  7C 08 02 A6 */	mflr r0
/* 80027D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027D7C  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027D80  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80027D84  38 63 03 1D */	addi r3, r3, 0x31d
/* 80027D88  4C C6 31 82 */	crclr 6
/* 80027D8C  4B FD ED 31 */	bl OSReport
/* 80027D90  38 60 00 00 */	li r3, 0
/* 80027D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027D98  7C 08 03 A6 */	mtlr r0
/* 80027D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80027DA0  4E 80 00 20 */	blr 
