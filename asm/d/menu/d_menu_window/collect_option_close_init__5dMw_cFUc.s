lbl_801FA660:
/* 801FA660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA664  7C 08 02 A6 */	mflr r0
/* 801FA668  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA66C  48 00 27 9D */	bl dMw_fade_out__5dMw_cFv
/* 801FA670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA674  7C 08 03 A6 */	mtlr r0
/* 801FA678  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA67C  4E 80 00 20 */	blr 
