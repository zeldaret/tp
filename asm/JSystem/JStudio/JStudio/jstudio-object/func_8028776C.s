lbl_8028776C:
/* 8028776C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287770  7C 08 02 A6 */	mflr r0
/* 80287774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028777C  7C 7F 1B 78 */	mr r31, r3
/* 80287780  4B FF F0 E5 */	bl __ct__Q27JStudio7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio8TAdaptor
/* 80287784  3C 60 80 3C */	lis r3, __vt__Q27JStudio16TObject_particle@ha /* 0x803C53AC@ha */
/* 80287788  38 03 53 AC */	addi r0, r3, __vt__Q27JStudio16TObject_particle@l /* 0x803C53AC@l */
/* 8028778C  90 1F 00 08 */	stw r0, 8(r31)
/* 80287790  7F E3 FB 78 */	mr r3, r31
/* 80287794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028779C  7C 08 03 A6 */	mtlr r0
/* 802877A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802877A4  4E 80 00 20 */	blr 
