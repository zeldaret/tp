lbl_8032E274:
/* 8032E274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032E278  7C 08 02 A6 */	mflr r0
/* 8032E27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032E280  38 84 00 88 */	addi r4, r4, 0x88
/* 8032E284  48 00 00 15 */	bl deform__13J3DDeformDataFP15J3DVertexBuffer
/* 8032E288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032E28C  7C 08 03 A6 */	mtlr r0
/* 8032E290  38 21 00 10 */	addi r1, r1, 0x10
/* 8032E294  4E 80 00 20 */	blr 
