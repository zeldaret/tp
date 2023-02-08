lbl_8002A1BC:
/* 8002A1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002A1C0  7C 08 02 A6 */	mflr r0
/* 8002A1C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002A1C8  4B FF E6 FD */	bl getDispType__15renderingAmap_cCFv
/* 8002A1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002A1D0  7C 08 03 A6 */	mtlr r0
/* 8002A1D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002A1D8  4E 80 00 20 */	blr 
