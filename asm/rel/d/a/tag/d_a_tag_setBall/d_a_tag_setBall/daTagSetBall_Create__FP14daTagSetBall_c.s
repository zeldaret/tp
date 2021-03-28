lbl_80D60304:
/* 80D60304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60308  7C 08 02 A6 */	mflr r0
/* 80D6030C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60310  4B FF FF 3D */	bl create__14daTagSetBall_cFv
/* 80D60314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60318  7C 08 03 A6 */	mtlr r0
/* 80D6031C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60320  4E 80 00 20 */	blr 
