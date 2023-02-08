lbl_801CE5B8:
/* 801CE5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE5BC  7C 08 02 A6 */	mflr r0
/* 801CE5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE5C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE5C8  7C 7F 1B 78 */	mr r31, r3
/* 801CE5CC  4B E6 ED 55 */	bl postRenderingMap__18dRenderingFDAmap_cFv
/* 801CE5D0  38 00 00 01 */	li r0, 1
/* 801CE5D4  98 1F 00 BB */	stb r0, 0xbb(r31)
/* 801CE5D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE5E0  7C 08 03 A6 */	mtlr r0
/* 801CE5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE5E8  4E 80 00 20 */	blr 
