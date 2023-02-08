lbl_801DC2F0:
/* 801DC2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC2F4  7C 08 02 A6 */	mflr r0
/* 801DC2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC2FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DC300  7C 7F 1B 78 */	mr r31, r3
/* 801DC304  80 63 00 9C */	lwz r3, 0x9c(r3)
/* 801DC308  28 03 00 00 */	cmplwi r3, 0
/* 801DC30C  41 82 00 0C */	beq lbl_801DC318
/* 801DC310  48 05 E3 71 */	bl selAnimeEnd__17dMsgScrn3Select_cFv
/* 801DC314  48 00 00 08 */	b lbl_801DC31C
lbl_801DC318:
/* 801DC318  38 60 00 01 */	li r3, 1
lbl_801DC31C:
/* 801DC31C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC320  41 82 00 0C */	beq lbl_801DC32C
/* 801DC324  38 00 00 00 */	li r0, 0
/* 801DC328  98 1F 00 E0 */	stb r0, 0xe0(r31)
lbl_801DC32C:
/* 801DC32C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DC330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC334  7C 08 03 A6 */	mtlr r0
/* 801DC338  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC33C  4E 80 00 20 */	blr 
