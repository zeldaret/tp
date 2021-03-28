lbl_805A2400:
/* 805A2400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2404  7C 08 02 A6 */	mflr r0
/* 805A2408  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A240C  4B FF FF E5 */	bl Draw__13daTagCstaSw_cFv
/* 805A2410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2414  7C 08 03 A6 */	mtlr r0
/* 805A2418  38 21 00 10 */	addi r1, r1, 0x10
/* 805A241C  4E 80 00 20 */	blr 
