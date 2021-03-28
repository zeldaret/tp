lbl_80336FF0:
/* 80336FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80336FF4  7C 08 02 A6 */	mflr r0
/* 80336FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80336FFC  4B FF FF 49 */	bl calcSizeTexture__14J3DModelLoaderFPC15J3DTextureBlock
/* 80337000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80337004  7C 08 03 A6 */	mtlr r0
/* 80337008  38 21 00 10 */	addi r1, r1, 0x10
/* 8033700C  4E 80 00 20 */	blr 
