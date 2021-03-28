lbl_801CE8B8:
/* 801CE8B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE8BC  7C 08 02 A6 */	mflr r0
/* 801CE8C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE8C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE8C8  3B E0 00 00 */	li r31, 0
/* 801CE8CC  80 83 00 80 */	lwz r4, 0x80(r3)
/* 801CE8D0  80 04 00 10 */	lwz r0, 0x10(r4)
/* 801CE8D4  90 03 00 80 */	stw r0, 0x80(r3)
/* 801CE8D8  80 03 00 80 */	lwz r0, 0x80(r3)
/* 801CE8DC  28 00 00 00 */	cmplwi r0, 0
/* 801CE8E0  40 82 00 10 */	bne lbl_801CE8F0
/* 801CE8E4  48 00 00 59 */	bl getNextRegion__15renderingFmap_cFv
/* 801CE8E8  7C 7F 1B 78 */	mr r31, r3
/* 801CE8EC  48 00 00 38 */	b lbl_801CE924
lbl_801CE8F0:
/* 801CE8F0  80 83 00 98 */	lwz r4, 0x98(r3)
/* 801CE8F4  38 04 00 01 */	addi r0, r4, 1
/* 801CE8F8  90 03 00 98 */	stw r0, 0x98(r3)
/* 801CE8FC  80 83 00 80 */	lwz r4, 0x80(r3)
/* 801CE900  80 04 00 08 */	lwz r0, 8(r4)
/* 801CE904  90 03 00 8C */	stw r0, 0x8c(r3)
/* 801CE908  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 801CE90C  88 04 00 01 */	lbz r0, 1(r4)
/* 801CE910  98 03 00 B9 */	stb r0, 0xb9(r3)
/* 801CE914  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 801CE918  88 04 00 02 */	lbz r0, 2(r4)
/* 801CE91C  98 03 00 BA */	stb r0, 0xba(r3)
/* 801CE920  4B FF FE ED */	bl getFirstRoom__15renderingFmap_cFv
lbl_801CE924:
/* 801CE924  7F E3 FB 78 */	mr r3, r31
/* 801CE928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE930  7C 08 03 A6 */	mtlr r0
/* 801CE934  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE938  4E 80 00 20 */	blr 
