lbl_800279B0:
/* 800279B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800279B4  7C 08 02 A6 */	mflr r0
/* 800279B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800279BC  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 800279C0  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 800279C4  38 63 02 5C */	addi r3, r3, 0x25c
/* 800279C8  4C C6 31 82 */	crclr 6
/* 800279CC  4B FD F0 F1 */	bl OSReport
/* 800279D0  38 60 00 00 */	li r3, 0
/* 800279D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800279D8  7C 08 03 A6 */	mtlr r0
/* 800279DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800279E0  4E 80 00 20 */	blr 
