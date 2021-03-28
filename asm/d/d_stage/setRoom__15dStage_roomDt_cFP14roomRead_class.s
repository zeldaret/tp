lbl_8002755C:
/* 8002755C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027560  7C 08 02 A6 */	mflr r0
/* 80027564  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027568  4B FF C9 2D */	bl dStage_SetErrorRoom__Fv
/* 8002756C  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80027570  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80027574  38 63 01 6F */	addi r3, r3, 0x16f
/* 80027578  4C C6 31 82 */	crclr 6
/* 8002757C  4B FD F5 41 */	bl OSReport
/* 80027580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027584  7C 08 03 A6 */	mtlr r0
/* 80027588  38 21 00 10 */	addi r1, r1, 0x10
/* 8002758C  4E 80 00 20 */	blr 
