lbl_80CDF5F4:
/* 80CDF5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF5F8  7C 08 02 A6 */	mflr r0
/* 80CDF5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF600  4B FF FF E5 */	bl Draw__14daSnowEffTag_cFv
/* 80CDF604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF608  7C 08 03 A6 */	mtlr r0
/* 80CDF60C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF610  4E 80 00 20 */	blr 
