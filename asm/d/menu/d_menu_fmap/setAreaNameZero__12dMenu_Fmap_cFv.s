lbl_801CC8AC:
/* 801CC8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC8B0  7C 08 02 A6 */	mflr r0
/* 801CC8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC8B8  38 00 00 00 */	li r0, 0
/* 801CC8BC  98 03 03 13 */	stb r0, 0x313(r3)
/* 801CC8C0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801CC8C4  38 80 00 00 */	li r4, 0
/* 801CC8C8  48 00 A7 49 */	bl setAreaNameString__17dMenu_Fmap2DTop_cFUl
/* 801CC8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC8D0  7C 08 03 A6 */	mtlr r0
/* 801CC8D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC8D8  4E 80 00 20 */	blr 
