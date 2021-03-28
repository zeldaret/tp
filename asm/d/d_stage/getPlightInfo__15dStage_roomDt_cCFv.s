lbl_80027768:
/* 80027768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002776C  7C 08 02 A6 */	mflr r0
/* 80027770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027774  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80027778  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 8002777C  38 63 01 CF */	addi r3, r3, 0x1cf
/* 80027780  4C C6 31 82 */	crclr 6
/* 80027784  4B FD F3 39 */	bl OSReport
/* 80027788  38 60 00 00 */	li r3, 0
/* 8002778C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027790  7C 08 03 A6 */	mtlr r0
/* 80027794  38 21 00 10 */	addi r1, r1, 0x10
/* 80027798  4E 80 00 20 */	blr 
