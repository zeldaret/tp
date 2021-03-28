lbl_802857E4:
/* 802857E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802857E8  7C 08 02 A6 */	mflr r0
/* 802857EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802857F0  80 C4 00 00 */	lwz r6, 0(r4)
/* 802857F4  80 E6 00 04 */	lwz r7, 4(r6)
/* 802857F8  3C C0 4A 46 */	lis r6, 0x4A46 /* 0x4A465642@ha */
/* 802857FC  38 06 56 42 */	addi r0, r6, 0x5642 /* 0x4A465642@l */
/* 80285800  7C 07 00 00 */	cmpw r7, r0
/* 80285804  41 82 00 1C */	beq lbl_80285820
/* 80285808  40 80 00 28 */	bge lbl_80285830
/* 8028580C  3C C0 4A 43 */	lis r6, 0x4A43 /* 0x4A435442@ha */
/* 80285810  38 06 54 42 */	addi r0, r6, 0x5442 /* 0x4A435442@l */
/* 80285814  7C 07 00 00 */	cmpw r7, r0
/* 80285818  41 82 00 10 */	beq lbl_80285828
/* 8028581C  48 00 00 14 */	b lbl_80285830
lbl_80285820:
/* 80285820  48 00 00 25 */	bl parseBlock_block_fvb___Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
/* 80285824  48 00 00 10 */	b lbl_80285834
lbl_80285828:
/* 80285828  48 00 00 C9 */	bl parseBlock_block_ctb___Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
/* 8028582C  48 00 00 08 */	b lbl_80285834
lbl_80285830:
/* 80285830  48 00 3F B9 */	bl parseBlock_block__Q37JStudio3stb6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
lbl_80285834:
/* 80285834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285838  7C 08 03 A6 */	mtlr r0
/* 8028583C  38 21 00 10 */	addi r1, r1, 0x10
/* 80285840  4E 80 00 20 */	blr 
