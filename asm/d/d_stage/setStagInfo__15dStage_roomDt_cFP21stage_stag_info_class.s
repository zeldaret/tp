lbl_8002797C:
/* 8002797C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027980  7C 08 02 A6 */	mflr r0
/* 80027984  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027988  4B FF C5 0D */	bl dStage_SetErrorRoom__Fv
/* 8002798C  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027990  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80027994  38 63 02 5C */	addi r3, r3, 0x25c
/* 80027998  4C C6 31 82 */	crclr 6
/* 8002799C  4B FD F1 21 */	bl OSReport
/* 800279A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800279A4  7C 08 03 A6 */	mtlr r0
/* 800279A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800279AC  4E 80 00 20 */	blr 
