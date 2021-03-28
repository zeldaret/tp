lbl_80AC622C:
/* 80AC622C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6230  7C 08 02 A6 */	mflr r0
/* 80AC6234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6238  4B FF F2 E9 */	bl Delete__12daNpc_seiB_cFv
/* 80AC623C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6240  7C 08 03 A6 */	mtlr r0
/* 80AC6244  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6248  4E 80 00 20 */	blr 
