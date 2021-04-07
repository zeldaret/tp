lbl_80027DD8:
/* 80027DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027DDC  7C 08 02 A6 */	mflr r0
/* 80027DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027DE4  4B FF C0 B1 */	bl dStage_SetErrorRoom__Fv
/* 80027DE8  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027DEC  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80027DF0  38 63 03 58 */	addi r3, r3, 0x358
/* 80027DF4  4C C6 31 82 */	crclr 6
/* 80027DF8  4B FD EC C5 */	bl OSReport
/* 80027DFC  38 60 00 00 */	li r3, 0
/* 80027E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027E04  7C 08 03 A6 */	mtlr r0
/* 80027E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80027E0C  4E 80 00 20 */	blr 
