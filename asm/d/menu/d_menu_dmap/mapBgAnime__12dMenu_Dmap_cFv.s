lbl_801BDF48:
/* 801BDF48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BDF4C  7C 08 02 A6 */	mflr r0
/* 801BDF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BDF54  80 63 00 08 */	lwz r3, 8(r3)
/* 801BDF58  4B FF A8 F5 */	bl mapScreenAnime__14dMenu_DmapBg_cFv
/* 801BDF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BDF60  7C 08 03 A6 */	mtlr r0
/* 801BDF64  38 21 00 10 */	addi r1, r1, 0x10
/* 801BDF68  4E 80 00 20 */	blr 
