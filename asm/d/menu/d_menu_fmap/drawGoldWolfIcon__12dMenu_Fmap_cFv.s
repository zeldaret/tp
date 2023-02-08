lbl_801CCE48:
/* 801CCE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CCE4C  7C 08 02 A6 */	mflr r0
/* 801CCE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CCE54  38 80 00 06 */	li r4, 6
/* 801CCE58  38 A0 00 0B */	li r5, 0xb
/* 801CCE5C  48 00 02 B1 */	bl drawIcon__12dMenu_Fmap_cFUci
/* 801CCE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CCE64  7C 08 03 A6 */	mtlr r0
/* 801CCE68  38 21 00 10 */	addi r1, r1, 0x10
/* 801CCE6C  4E 80 00 20 */	blr 
