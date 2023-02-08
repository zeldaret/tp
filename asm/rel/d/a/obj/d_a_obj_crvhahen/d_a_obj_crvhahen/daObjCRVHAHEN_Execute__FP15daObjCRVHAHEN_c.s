lbl_80BD3D9C:
/* 80BD3D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD3DA0  7C 08 02 A6 */	mflr r0
/* 80BD3DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD3DA8  4B FF FD 79 */	bl Execute__15daObjCRVHAHEN_cFv
/* 80BD3DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD3DB0  7C 08 03 A6 */	mtlr r0
/* 80BD3DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3DB8  4E 80 00 20 */	blr 
