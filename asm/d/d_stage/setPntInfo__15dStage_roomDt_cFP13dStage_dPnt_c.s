lbl_800279EC:
/* 800279EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800279F0  7C 08 02 A6 */	mflr r0
/* 800279F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800279F8  4B FF C4 9D */	bl dStage_SetErrorRoom__Fv
/* 800279FC  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80027A00  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80027A04  38 63 02 73 */	addi r3, r3, 0x273
/* 80027A08  4C C6 31 82 */	crclr 6
/* 80027A0C  4B FD F0 B1 */	bl OSReport
/* 80027A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027A14  7C 08 03 A6 */	mtlr r0
/* 80027A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80027A1C  4E 80 00 20 */	blr 
