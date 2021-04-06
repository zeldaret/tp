lbl_80027F18:
/* 80027F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027F1C  7C 08 02 A6 */	mflr r0
/* 80027F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027F24  4B FF BF A1 */	bl dStage_SetErrorStage__Fv
/* 80027F28  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027F2C  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80027F30  38 63 03 6D */	addi r3, r3, 0x36d
/* 80027F34  4C C6 31 82 */	crclr 6
/* 80027F38  4B FD EB 85 */	bl OSReport
/* 80027F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027F40  7C 08 03 A6 */	mtlr r0
/* 80027F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80027F48  4E 80 00 20 */	blr 
