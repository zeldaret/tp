lbl_801CEAAC:
/* 801CEAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CEAB0  7C 08 02 A6 */	mflr r0
/* 801CEAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CEAB8  7C A8 2B 78 */	mr r8, r5
/* 801CEABC  88 A5 00 00 */	lbz r5, 0(r5)
/* 801CEAC0  88 C8 00 01 */	lbz r6, 1(r8)
/* 801CEAC4  88 E8 00 02 */	lbz r7, 2(r8)
/* 801CEAC8  89 08 00 03 */	lbz r8, 3(r8)
/* 801CEACC  4B FF FF 6D */	bl setFmapPaletteColor__15dMenu_FmapMap_cFQ215renderingFmap_c9palette_eUcUcUcUc
/* 801CEAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CEAD4  7C 08 03 A6 */	mtlr r0
/* 801CEAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CEADC  4E 80 00 20 */	blr 
