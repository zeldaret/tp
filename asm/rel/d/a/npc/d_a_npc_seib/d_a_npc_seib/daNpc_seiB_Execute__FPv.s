lbl_80AC624C:
/* 80AC624C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6250  7C 08 02 A6 */	mflr r0
/* 80AC6254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6258  4B FF F2 FD */	bl Execute__12daNpc_seiB_cFv
/* 80AC625C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6260  7C 08 03 A6 */	mtlr r0
/* 80AC6264  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6268  4E 80 00 20 */	blr 
