lbl_800275DC:
/* 800275DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800275E0  7C 08 02 A6 */	mflr r0
/* 800275E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800275E8  4B FF C8 AD */	bl dStage_SetErrorRoom__Fv
/* 800275EC  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 800275F0  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 800275F4  38 63 01 86 */	addi r3, r3, 0x186
/* 800275F8  4C C6 31 82 */	crclr 6
/* 800275FC  4B FD F4 C1 */	bl OSReport
/* 80027600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027604  7C 08 03 A6 */	mtlr r0
/* 80027608  38 21 00 10 */	addi r1, r1, 0x10
/* 8002760C  4E 80 00 20 */	blr 
