lbl_8015ED10:
/* 8015ED10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015ED14  7C 08 02 A6 */	mflr r0
/* 8015ED18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015ED1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015ED20  93 C1 00 08 */	stw r30, 8(r1)
/* 8015ED24  7C 7E 1B 78 */	mr r30, r3
/* 8015ED28  7C 9F 23 78 */	mr r31, r4
/* 8015ED2C  48 00 00 81 */	bl initData__14daPy_anmHeap_cFv
/* 8015ED30  93 FE 00 08 */	stw r31, 8(r30)
/* 8015ED34  7F C3 F3 78 */	mr r3, r30
/* 8015ED38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015ED3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015ED40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015ED44  7C 08 03 A6 */	mtlr r0
/* 8015ED48  38 21 00 10 */	addi r1, r1, 0x10
/* 8015ED4C  4E 80 00 20 */	blr 
