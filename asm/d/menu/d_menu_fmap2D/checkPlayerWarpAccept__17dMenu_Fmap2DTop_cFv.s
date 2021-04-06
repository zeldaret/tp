lbl_801D7994:
/* 801D7994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7998  7C 08 02 A6 */	mflr r0
/* 801D799C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D79A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D79A4  7C 7F 1B 78 */	mr r31, r3
/* 801D79A8  48 00 01 B1 */	bl checkWarpAcceptCannon__17dMenu_Fmap2DTop_cFv
/* 801D79AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D79B0  40 82 00 0C */	bne lbl_801D79BC
/* 801D79B4  38 60 00 00 */	li r3, 0
/* 801D79B8  48 00 00 3C */	b lbl_801D79F4
lbl_801D79BC:
/* 801D79BC  7F E3 FB 78 */	mr r3, r31
/* 801D79C0  48 00 00 F5 */	bl checkWarpAcceptRegion4__17dMenu_Fmap2DTop_cFv
/* 801D79C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D79C8  40 82 00 0C */	bne lbl_801D79D4
/* 801D79CC  38 60 00 00 */	li r3, 0
/* 801D79D0  48 00 00 24 */	b lbl_801D79F4
lbl_801D79D4:
/* 801D79D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801D79D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801D79DC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801D79E0  38 80 00 00 */	li r4, 0
/* 801D79E4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801D79E8  81 8C 02 1C */	lwz r12, 0x21c(r12)
/* 801D79EC  7D 89 03 A6 */	mtctr r12
/* 801D79F0  4E 80 04 21 */	bctrl 
lbl_801D79F4:
/* 801D79F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D79F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D79FC  7C 08 03 A6 */	mtlr r0
/* 801D7A00  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7A04  4E 80 00 20 */	blr 
