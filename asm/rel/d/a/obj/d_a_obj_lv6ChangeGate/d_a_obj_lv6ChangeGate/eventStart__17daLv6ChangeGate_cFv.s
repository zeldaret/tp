lbl_80C715BC:
/* 80C715BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C715C0  7C 08 02 A6 */	mflr r0
/* 80C715C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C715C8  88 03 14 D6 */	lbz r0, 0x14d6(r3)
/* 80C715CC  28 00 00 00 */	cmplwi r0, 0
/* 80C715D0  41 82 00 0C */	beq lbl_80C715DC
/* 80C715D4  48 00 00 31 */	bl init_modeSlideRight__17daLv6ChangeGate_cFv
/* 80C715D8  48 00 00 08 */	b lbl_80C715E0
lbl_80C715DC:
/* 80C715DC  48 00 02 61 */	bl init_modeSlideLeft__17daLv6ChangeGate_cFv
lbl_80C715E0:
/* 80C715E0  38 60 00 01 */	li r3, 1
/* 80C715E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C715E8  7C 08 03 A6 */	mtlr r0
/* 80C715EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C715F0  4E 80 00 20 */	blr 
