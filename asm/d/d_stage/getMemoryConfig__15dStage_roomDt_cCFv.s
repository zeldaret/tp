lbl_80027B64:
/* 80027B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027B68  7C 08 02 A6 */	mflr r0
/* 80027B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027B70  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027B74  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80027B78  38 63 02 B4 */	addi r3, r3, 0x2b4
/* 80027B7C  4C C6 31 82 */	crclr 6
/* 80027B80  4B FD EF 3D */	bl OSReport
/* 80027B84  38 60 00 00 */	li r3, 0
/* 80027B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027B8C  7C 08 03 A6 */	mtlr r0
/* 80027B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80027B94  4E 80 00 20 */	blr 
