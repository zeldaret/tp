lbl_80008078:
/* 80008078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000807C  7C 08 02 A6 */	mflr r0
/* 80008080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008084  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 80008088  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 8000808C  48 00 00 15 */	bl onBlure__13mDoGph_gInf_cFPA4_Cf
/* 80008090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008094  7C 08 03 A6 */	mtlr r0
/* 80008098  38 21 00 10 */	addi r1, r1, 0x10
/* 8000809C  4E 80 00 20 */	blr 
