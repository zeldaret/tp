lbl_801FB8AC:
/* 801FB8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB8B0  7C 08 02 A6 */	mflr r0
/* 801FB8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB8B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB8BC  7C 7F 1B 78 */	mr r31, r3
/* 801FB8C0  80 63 01 28 */	lwz r3, 0x128(r3)
/* 801FB8C4  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801FB8C8  28 00 00 02 */	cmplwi r0, 2
/* 801FB8CC  40 82 00 08 */	bne lbl_801FB8D4
/* 801FB8D0  4B FE 1B A5 */	bl _move__14dMenu_Letter_cFv
lbl_801FB8D4:
/* 801FB8D4  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 801FB8D8  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801FB8DC  28 00 00 03 */	cmplwi r0, 3
/* 801FB8E0  40 82 00 0C */	bne lbl_801FB8EC
/* 801FB8E4  38 00 00 15 */	li r0, 0x15
/* 801FB8E8  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB8EC:
/* 801FB8EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB8F4  7C 08 03 A6 */	mtlr r0
/* 801FB8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB8FC  4E 80 00 20 */	blr 
