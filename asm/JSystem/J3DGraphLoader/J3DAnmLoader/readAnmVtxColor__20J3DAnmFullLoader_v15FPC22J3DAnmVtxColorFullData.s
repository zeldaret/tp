lbl_80338BB4:
/* 80338BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338BB8  7C 08 02 A6 */	mflr r0
/* 80338BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338BC0  7C 85 23 78 */	mr r5, r4
/* 80338BC4  80 83 00 04 */	lwz r4, 4(r3)
/* 80338BC8  48 00 00 15 */	bl setAnmVtxColor__20J3DAnmFullLoader_v15FP18J3DAnmVtxColorFullPC22J3DAnmVtxColorFullData
/* 80338BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338BD0  7C 08 03 A6 */	mtlr r0
/* 80338BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80338BD8  4E 80 00 20 */	blr 
