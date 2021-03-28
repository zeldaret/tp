lbl_801FB7AC:
/* 801FB7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB7B0  7C 08 02 A6 */	mflr r0
/* 801FB7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB7B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB7BC  7C 7F 1B 78 */	mr r31, r3
/* 801FB7C0  80 63 01 24 */	lwz r3, 0x124(r3)
/* 801FB7C4  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801FB7C8  28 00 00 02 */	cmplwi r0, 2
/* 801FB7CC  40 82 00 08 */	bne lbl_801FB7D4
/* 801FB7D0  4B FE 7C 39 */	bl _move__14dMenu_Option_cFv
lbl_801FB7D4:
/* 801FB7D4  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 801FB7D8  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801FB7DC  28 00 00 03 */	cmplwi r0, 3
/* 801FB7E0  40 82 00 0C */	bne lbl_801FB7EC
/* 801FB7E4  38 00 00 12 */	li r0, 0x12
/* 801FB7E8  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB7EC:
/* 801FB7EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB7F4  7C 08 03 A6 */	mtlr r0
/* 801FB7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB7FC  4E 80 00 20 */	blr 
