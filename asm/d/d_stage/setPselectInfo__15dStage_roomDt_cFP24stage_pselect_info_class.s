lbl_80027644:
/* 80027644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027648  7C 08 02 A6 */	mflr r0
/* 8002764C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027650  4B FF C8 45 */	bl dStage_SetErrorRoom__Fv
/* 80027654  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027658  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 8002765C  38 63 01 9E */	addi r3, r3, 0x19e
/* 80027660  4C C6 31 82 */	crclr 6
/* 80027664  4B FD F4 59 */	bl OSReport
/* 80027668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002766C  7C 08 03 A6 */	mtlr r0
/* 80027670  38 21 00 10 */	addi r1, r1, 0x10
/* 80027674  4E 80 00 20 */	blr 
