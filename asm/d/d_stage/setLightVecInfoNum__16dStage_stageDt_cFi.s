lbl_80027F80:
/* 80027F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027F84  7C 08 02 A6 */	mflr r0
/* 80027F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027F8C  4B FF BF 39 */	bl dStage_SetErrorStage__Fv
/* 80027F90  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80027F94  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80027F98  38 63 03 89 */	addi r3, r3, 0x389
/* 80027F9C  4C C6 31 82 */	crclr 6
/* 80027FA0  4B FD EB 1D */	bl OSReport
/* 80027FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027FA8  7C 08 03 A6 */	mtlr r0
/* 80027FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80027FB0  4E 80 00 20 */	blr 
