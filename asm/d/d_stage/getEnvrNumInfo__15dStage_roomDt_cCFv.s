lbl_800278A0:
/* 800278A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800278A4  7C 08 02 A6 */	mflr r0
/* 800278A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800278AC  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 800278B0  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 800278B4  38 63 02 24 */	addi r3, r3, 0x224
/* 800278B8  4C C6 31 82 */	crclr 6
/* 800278BC  4B FD F2 01 */	bl OSReport
/* 800278C0  38 60 00 00 */	li r3, 0
/* 800278C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800278C8  7C 08 03 A6 */	mtlr r0
/* 800278CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800278D0  4E 80 00 20 */	blr 
