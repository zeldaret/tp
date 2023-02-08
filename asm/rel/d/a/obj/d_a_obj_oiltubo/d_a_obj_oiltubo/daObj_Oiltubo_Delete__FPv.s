lbl_80CA7578:
/* 80CA7578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA757C  7C 08 02 A6 */	mflr r0
/* 80CA7580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7584  4B FF F6 D9 */	bl Delete__15daObj_Oiltubo_cFv
/* 80CA7588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA758C  7C 08 03 A6 */	mtlr r0
/* 80CA7590  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7594  4E 80 00 20 */	blr 
