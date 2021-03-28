lbl_80CA4828:
/* 80CA4828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA482C  7C 08 02 A6 */	mflr r0
/* 80CA4830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4834  4B FF FB 6D */	bl Delete__13daObj_Nougu_cFv
/* 80CA4838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA483C  7C 08 03 A6 */	mtlr r0
/* 80CA4840  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4844  4E 80 00 20 */	blr 
