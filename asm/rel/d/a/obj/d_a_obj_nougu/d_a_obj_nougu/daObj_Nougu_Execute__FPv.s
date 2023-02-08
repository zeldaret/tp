lbl_80CA4848:
/* 80CA4848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA484C  7C 08 02 A6 */	mflr r0
/* 80CA4850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4854  4B FF FB 81 */	bl Execute__13daObj_Nougu_cFv
/* 80CA4858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA485C  7C 08 03 A6 */	mtlr r0
/* 80CA4860  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4864  4E 80 00 20 */	blr 
