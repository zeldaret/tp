lbl_80287368:
/* 80287368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028736C  7C 08 02 A6 */	mflr r0
/* 80287370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287378  7C 7F 1B 78 */	mr r31, r3
/* 8028737C  4B FF F4 E9 */	bl __ct__Q27JStudio7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio8TAdaptor
/* 80287380  3C 60 80 3C */	lis r3, __vt__Q27JStudio13TObject_light@ha /* 0x803C545C@ha */
/* 80287384  38 03 54 5C */	addi r0, r3, __vt__Q27JStudio13TObject_light@l /* 0x803C545C@l */
/* 80287388  90 1F 00 08 */	stw r0, 8(r31)
/* 8028738C  7F E3 FB 78 */	mr r3, r31
/* 80287390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287398  7C 08 03 A6 */	mtlr r0
/* 8028739C  38 21 00 10 */	addi r1, r1, 0x10
/* 802873A0  4E 80 00 20 */	blr 
