lbl_8002779C:
/* 8002779C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800277A0  7C 08 02 A6 */	mflr r0
/* 800277A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800277A8  4B FF C6 ED */	bl dStage_SetErrorRoom__Fv
/* 800277AC  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 800277B0  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 800277B4  38 63 01 E8 */	addi r3, r3, 0x1e8
/* 800277B8  4C C6 31 82 */	crclr 6
/* 800277BC  4B FD F3 01 */	bl OSReport
/* 800277C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800277C4  7C 08 03 A6 */	mtlr r0
/* 800277C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800277CC  4E 80 00 20 */	blr 
