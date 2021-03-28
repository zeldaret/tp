lbl_8028DECC:
/* 8028DECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028DED0  7C 08 02 A6 */	mflr r0
/* 8028DED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028DED8  7C 65 1B 78 */	mr r5, r3
/* 8028DEDC  80 64 01 18 */	lwz r3, 0x118(r4)
/* 8028DEE0  28 03 00 00 */	cmplwi r3, 0
/* 8028DEE4  41 82 00 10 */	beq lbl_8028DEF4
/* 8028DEE8  81 85 00 08 */	lwz r12, 8(r5)
/* 8028DEEC  7D 89 03 A6 */	mtctr r12
/* 8028DEF0  4E 80 04 21 */	bctrl 
lbl_8028DEF4:
/* 8028DEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028DEF8  7C 08 03 A6 */	mtlr r0
/* 8028DEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8028DF00  4E 80 00 20 */	blr 
