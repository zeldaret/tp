lbl_802871DC:
/* 802871DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802871E0  7C 08 02 A6 */	mflr r0
/* 802871E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802871E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802871EC  7C 7F 1B 78 */	mr r31, r3
/* 802871F0  4B FF F6 75 */	bl __ct__Q27JStudio7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio8TAdaptor
/* 802871F4  3C 60 80 3C */	lis r3, __vt__Q27JStudio11TObject_fog@ha
/* 802871F8  38 03 54 A4 */	addi r0, r3, __vt__Q27JStudio11TObject_fog@l
/* 802871FC  90 1F 00 08 */	stw r0, 8(r31)
/* 80287200  7F E3 FB 78 */	mr r3, r31
/* 80287204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028720C  7C 08 03 A6 */	mtlr r0
/* 80287210  38 21 00 10 */	addi r1, r1, 0x10
/* 80287214  4E 80 00 20 */	blr 
