lbl_80CC0784:
/* 80CC0784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0788  7C 08 02 A6 */	mflr r0
/* 80CC078C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0790  3C 60 80 CC */	lis r3, l_HIO@ha
/* 80CC0794  38 63 0A C4 */	addi r3, r3, l_HIO@l
/* 80CC0798  4B FF F1 15 */	bl __ct__15daRotTrap_HIO_cFv
/* 80CC079C  3C 80 80 CC */	lis r4, __dt__15daRotTrap_HIO_cFv@ha
/* 80CC07A0  38 84 07 28 */	addi r4, r4, __dt__15daRotTrap_HIO_cFv@l
/* 80CC07A4  3C A0 80 CC */	lis r5, lit_3643@ha
/* 80CC07A8  38 A5 0A B8 */	addi r5, r5, lit_3643@l
/* 80CC07AC  4B FF F0 8D */	bl __register_global_object
/* 80CC07B0  3C 60 80 CC */	lis r3, mCcDCyl__11daRotTrap_c@ha
/* 80CC07B4  38 63 08 80 */	addi r3, r3, mCcDCyl__11daRotTrap_c@l
/* 80CC07B8  38 A3 FF FC */	addi r5, r3, -4
/* 80CC07BC  3C 60 80 CC */	lis r3, mCcDObjInfo__11daRotTrap_c@ha
/* 80CC07C0  38 63 08 0C */	addi r3, r3, mCcDObjInfo__11daRotTrap_c@l
/* 80CC07C4  38 83 FF FC */	addi r4, r3, -4
/* 80CC07C8  38 00 00 06 */	li r0, 6
/* 80CC07CC  7C 09 03 A6 */	mtctr r0
lbl_80CC07D0:
/* 80CC07D0  80 64 00 04 */	lwz r3, 4(r4)
/* 80CC07D4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80CC07D8  90 65 00 04 */	stw r3, 4(r5)
/* 80CC07DC  94 05 00 08 */	stwu r0, 8(r5)
/* 80CC07E0  42 00 FF F0 */	bdnz lbl_80CC07D0
/* 80CC07E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC07E8  7C 08 03 A6 */	mtlr r0
/* 80CC07EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC07F0  4E 80 00 20 */	blr 
