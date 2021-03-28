lbl_8033960C:
/* 8033960C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339610  7C 08 02 A6 */	mflr r0
/* 80339614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80339618  7C 85 23 78 */	mr r5, r4
/* 8033961C  80 83 00 04 */	lwz r4, 4(r3)
/* 80339620  48 00 00 15 */	bl setAnmVtxColor__19J3DAnmKeyLoader_v15FP17J3DAnmVtxColorKeyPC21J3DAnmVtxColorKeyData
/* 80339624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80339628  7C 08 03 A6 */	mtlr r0
/* 8033962C  38 21 00 10 */	addi r1, r1, 0x10
/* 80339630  4E 80 00 20 */	blr 
