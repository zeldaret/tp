lbl_801D8658:
/* 801D8658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D865C  7C 08 02 A6 */	mflr r0
/* 801D8660  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D8668  7C 7F 1B 78 */	mr r31, r3
/* 801D866C  38 60 00 2C */	li r3, 0x2c
/* 801D8670  48 0F 65 DD */	bl __nw__FUl
/* 801D8674  7C 60 1B 79 */	or. r0, r3, r3
/* 801D8678  41 82 00 0C */	beq lbl_801D8684
/* 801D867C  48 07 15 A5 */	bl __ct__12dMsgString_cFv
/* 801D8680  7C 60 1B 78 */	mr r0, r3
lbl_801D8684:
/* 801D8684  90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 801D8688  7F E3 FB 78 */	mr r3, r31
/* 801D868C  48 00 0F B9 */	bl screenSetBase__14dMenu_Insect_cFv
/* 801D8690  7F E3 FB 78 */	mr r3, r31
/* 801D8694  48 00 12 5D */	bl screenSetExplain__14dMenu_Insect_cFv
/* 801D8698  7F E3 FB 78 */	mr r3, r31
/* 801D869C  48 00 15 35 */	bl screenSetDoIcon__14dMenu_Insect_cFv
/* 801D86A0  7F E3 FB 78 */	mr r3, r31
/* 801D86A4  38 80 00 01 */	li r4, 1
/* 801D86A8  48 00 1D BD */	bl setHIO__14dMenu_Insect_cFb
/* 801D86AC  7F E3 FB 78 */	mr r3, r31
/* 801D86B0  48 00 02 65 */	bl init__14dMenu_Insect_cFv
/* 801D86B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D86B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D86BC  7C 08 03 A6 */	mtlr r0
/* 801D86C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D86C4  4E 80 00 20 */	blr 
