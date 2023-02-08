lbl_80CA7558:
/* 80CA7558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA755C  7C 08 02 A6 */	mflr r0
/* 80CA7560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7564  4B FF F1 B5 */	bl create__15daObj_Oiltubo_cFv
/* 80CA7568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA756C  7C 08 03 A6 */	mtlr r0
/* 80CA7570  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7574  4E 80 00 20 */	blr 
