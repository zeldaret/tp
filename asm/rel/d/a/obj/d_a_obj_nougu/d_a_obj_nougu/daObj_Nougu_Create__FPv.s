lbl_80CA4808:
/* 80CA4808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA480C  7C 08 02 A6 */	mflr r0
/* 80CA4810  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4814  4B FF F6 11 */	bl create__13daObj_Nougu_cFv
/* 80CA4818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA481C  7C 08 03 A6 */	mtlr r0
/* 80CA4820  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4824  4E 80 00 20 */	blr 
