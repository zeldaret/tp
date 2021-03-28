lbl_80338FEC:
/* 80338FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338FF0  7C 08 02 A6 */	mflr r0
/* 80338FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338FF8  7C 85 23 78 */	mr r5, r4
/* 80338FFC  80 83 00 04 */	lwz r4, 4(r3)
/* 80339000  48 00 00 15 */	bl setAnmTransform__19J3DAnmKeyLoader_v15FP18J3DAnmTransformKeyPC22J3DAnmTransformKeyData
/* 80339004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80339008  7C 08 03 A6 */	mtlr r0
/* 8033900C  38 21 00 10 */	addi r1, r1, 0x10
/* 80339010  4E 80 00 20 */	blr 
