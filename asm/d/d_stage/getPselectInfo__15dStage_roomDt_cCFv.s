lbl_80027678:
/* 80027678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002767C  7C 08 02 A6 */	mflr r0
/* 80027680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027684  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027688  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 8002768C  38 63 01 9E */	addi r3, r3, 0x19e
/* 80027690  4C C6 31 82 */	crclr 6
/* 80027694  4B FD F4 29 */	bl OSReport
/* 80027698  38 60 00 00 */	li r3, 0
/* 8002769C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800276A0  7C 08 03 A6 */	mtlr r0
/* 800276A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800276A8  4E 80 00 20 */	blr 
