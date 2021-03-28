lbl_80AC620C:
/* 80AC620C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6210  7C 08 02 A6 */	mflr r0
/* 80AC6214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6218  4B FF EF 71 */	bl create__12daNpc_seiB_cFv
/* 80AC621C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6220  7C 08 03 A6 */	mtlr r0
/* 80AC6224  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6228  4E 80 00 20 */	blr 
