lbl_800278F4:
/* 800278F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800278F8  7C 08 02 A6 */	mflr r0
/* 800278FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027900  4B FF C5 95 */	bl dStage_SetErrorRoom__Fv
/* 80027904  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027908  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 8002790C  38 63 02 3F */	addi r3, r3, 0x23f
/* 80027910  4C C6 31 82 */	crclr 6
/* 80027914  4B FD F1 A9 */	bl OSReport
/* 80027918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002791C  7C 08 03 A6 */	mtlr r0
/* 80027920  38 21 00 10 */	addi r1, r1, 0x10
/* 80027924  4E 80 00 20 */	blr 
