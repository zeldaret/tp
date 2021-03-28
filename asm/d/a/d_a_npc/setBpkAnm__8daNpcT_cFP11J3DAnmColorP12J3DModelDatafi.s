lbl_801483B8:
/* 801483B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801483BC  7C 08 02 A6 */	mflr r0
/* 801483C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801483C4  7C 80 23 78 */	mr r0, r4
/* 801483C8  7C C7 33 78 */	mr r7, r6
/* 801483CC  38 85 00 58 */	addi r4, r5, 0x58
/* 801483D0  7C 05 03 78 */	mr r5, r0
/* 801483D4  38 C0 00 01 */	li r6, 1
/* 801483D8  39 00 00 00 */	li r8, 0
/* 801483DC  39 20 FF FF */	li r9, -1
/* 801483E0  38 63 06 74 */	addi r3, r3, 0x674
/* 801483E4  4B EC 50 99 */	bl init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 801483E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801483EC  7C 08 03 A6 */	mtlr r0
/* 801483F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801483F4  4E 80 00 20 */	blr 
