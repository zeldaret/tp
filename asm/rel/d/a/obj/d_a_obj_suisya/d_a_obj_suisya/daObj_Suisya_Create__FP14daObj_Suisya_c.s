lbl_80CF04E8:
/* 80CF04E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF04EC  7C 08 02 A6 */	mflr r0
/* 80CF04F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF04F4  4B FF FE 1D */	bl create__14daObj_Suisya_cFv
/* 80CF04F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF04FC  7C 08 03 A6 */	mtlr r0
/* 80CF0500  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF0504  4E 80 00 20 */	blr 
