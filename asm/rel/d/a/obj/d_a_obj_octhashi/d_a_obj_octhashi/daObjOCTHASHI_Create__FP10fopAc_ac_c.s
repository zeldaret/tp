lbl_80CA4D98:
/* 80CA4D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4D9C  7C 08 02 A6 */	mflr r0
/* 80CA4DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4DA4  48 00 0D F5 */	bl create__15daObjOCTHASHI_cFv
/* 80CA4DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4DAC  7C 08 03 A6 */	mtlr r0
/* 80CA4DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4DB4  4E 80 00 20 */	blr 
