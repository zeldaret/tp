lbl_80309570:
/* 80309570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309574  7C 08 02 A6 */	mflr r0
/* 80309578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030957C  7C 85 23 78 */	mr r5, r4
/* 80309580  80 83 00 04 */	lwz r4, 4(r3)
/* 80309584  48 00 00 15 */	bl setAnmTransform__19J2DAnmKeyLoader_v15FP18J2DAnmTransformKeyPC22J3DAnmTransformKeyData
/* 80309588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030958C  7C 08 03 A6 */	mtlr r0
/* 80309590  38 21 00 10 */	addi r1, r1, 0x10
/* 80309594  4E 80 00 20 */	blr 
