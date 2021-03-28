lbl_801E8E6C:
/* 801E8E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E8E70  7C 08 02 A6 */	mflr r0
/* 801E8E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E8E78  4B FF A8 55 */	bl _draw__14dMenu_Option_cFv
/* 801E8E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E8E80  7C 08 03 A6 */	mtlr r0
/* 801E8E84  38 21 00 10 */	addi r1, r1, 0x10
/* 801E8E88  4E 80 00 20 */	blr 
