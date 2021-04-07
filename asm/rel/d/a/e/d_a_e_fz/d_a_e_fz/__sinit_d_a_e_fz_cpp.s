lbl_806C1488:
/* 806C1488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C148C  7C 08 02 A6 */	mflr r0
/* 806C1490  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C1494  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C1BB0@ha */
/* 806C1498  38 63 1B B0 */	addi r3, r3, l_HIO@l /* 0x806C1BB0@l */
/* 806C149C  4B FF D4 B1 */	bl __ct__12daE_FZ_HIO_cFv
/* 806C14A0  3C 80 80 6C */	lis r4, __dt__12daE_FZ_HIO_cFv@ha /* 0x806C1440@ha */
/* 806C14A4  38 84 14 40 */	addi r4, r4, __dt__12daE_FZ_HIO_cFv@l /* 0x806C1440@l */
/* 806C14A8  3C A0 80 6C */	lis r5, lit_3819@ha /* 0x806C1BA4@ha */
/* 806C14AC  38 A5 1B A4 */	addi r5, r5, lit_3819@l /* 0x806C1BA4@l */
/* 806C14B0  4B FF D4 29 */	bl __register_global_object
/* 806C14B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C14B8  7C 08 03 A6 */	mtlr r0
/* 806C14BC  38 21 00 10 */	addi r1, r1, 0x10
/* 806C14C0  4E 80 00 20 */	blr 
