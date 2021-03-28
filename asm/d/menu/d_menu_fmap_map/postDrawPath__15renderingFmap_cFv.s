lbl_801CE560:
/* 801CE560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE564  7C 08 02 A6 */	mflr r0
/* 801CE568  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE570  7C 7F 1B 78 */	mr r31, r3
/* 801CE574  38 60 00 01 */	li r3, 1
/* 801CE578  38 80 00 00 */	li r4, 0
/* 801CE57C  48 18 D8 BD */	bl GXSetMisc
/* 801CE580  38 7F 00 24 */	addi r3, r31, 0x24
/* 801CE584  38 9F 00 54 */	addi r4, r31, 0x54
/* 801CE588  38 BF 00 60 */	addi r5, r31, 0x60
/* 801CE58C  38 DF 00 6C */	addi r6, r31, 0x6c
/* 801CE590  38 E0 00 00 */	li r7, 0
/* 801CE594  4B E3 E1 7D */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 801CE598  38 7F 00 24 */	addi r3, r31, 0x24
/* 801CE59C  38 80 00 00 */	li r4, 0
/* 801CE5A0  48 19 1C AD */	bl GXLoadPosMtxImm
/* 801CE5A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE5AC  7C 08 03 A6 */	mtlr r0
/* 801CE5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE5B4  4E 80 00 20 */	blr 
