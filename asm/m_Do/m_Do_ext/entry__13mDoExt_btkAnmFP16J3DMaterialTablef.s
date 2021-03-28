lbl_8000D6D8:
/* 8000D6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000D6DC  7C 08 02 A6 */	mflr r0
/* 8000D6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000D6E4  7C 65 1B 78 */	mr r5, r3
/* 8000D6E8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8000D6EC  D0 23 00 08 */	stfs f1, 8(r3)
/* 8000D6F0  7C 83 23 78 */	mr r3, r4
/* 8000D6F4  80 85 00 14 */	lwz r4, 0x14(r5)
/* 8000D6F8  48 32 25 CD */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8000D6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000D700  7C 08 03 A6 */	mtlr r0
/* 8000D704  38 21 00 10 */	addi r1, r1, 0x10
/* 8000D708  4E 80 00 20 */	blr 
