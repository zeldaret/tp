lbl_801CAC30:
/* 801CAC30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CAC34  7C 08 02 A6 */	mflr r0
/* 801CAC38  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CAC3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CAC40  7C 7F 1B 78 */	mr r31, r3
/* 801CAC44  38 00 FF F6 */	li r0, -10
/* 801CAC48  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801CAC4C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801CAC50  38 80 00 00 */	li r4, 0
/* 801CAC54  38 A0 00 FF */	li r5, 0xff
/* 801CAC58  48 00 C6 7D */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CAC5C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CAC60  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CAC64  48 00 68 15 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801CAC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CAC6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CAC70  7C 08 03 A6 */	mtlr r0
/* 801CAC74  38 21 00 10 */	addi r1, r1, 0x10
/* 801CAC78  4E 80 00 20 */	blr 
