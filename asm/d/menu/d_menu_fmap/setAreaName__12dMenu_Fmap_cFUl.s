lbl_801CC880:
/* 801CC880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC884  7C 08 02 A6 */	mflr r0
/* 801CC888  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC88C  38 00 00 01 */	li r0, 1
/* 801CC890  98 03 03 13 */	stb r0, 0x313(r3)
/* 801CC894  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801CC898  48 00 A7 79 */	bl setAreaNameString__17dMenu_Fmap2DTop_cFUl
/* 801CC89C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC8A0  7C 08 03 A6 */	mtlr r0
/* 801CC8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC8A8  4E 80 00 20 */	blr 
