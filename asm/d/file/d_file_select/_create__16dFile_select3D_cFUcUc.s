lbl_801903DC:
/* 801903DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801903E0  7C 08 02 A6 */	mflr r0
/* 801903E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801903E8  39 61 00 20 */	addi r11, r1, 0x20
/* 801903EC  48 1D 1D F1 */	bl _savegpr_29
/* 801903F0  7C 7D 1B 78 */	mr r29, r3
/* 801903F4  7C 9E 23 78 */	mr r30, r4
/* 801903F8  7C BF 2B 78 */	mr r31, r5
/* 801903FC  38 61 00 08 */	addi r3, r1, 8
/* 80190400  3C 80 00 02 */	lis r4, 0x0002 /* 0x00025800@ha */
/* 80190404  38 84 58 00 */	addi r4, r4, 0x5800 /* 0x00025800@l */
/* 80190408  38 A0 00 20 */	li r5, 0x20
/* 8019040C  4B E7 EB E9 */	bl mDoExt_createSolidHeapFromGameToCurrent__FPP7JKRHeapUlUl
/* 80190410  90 7D 00 04 */	stw r3, 4(r29)
/* 80190414  C0 02 9F 48 */	lfs f0, lit_4778(r2)
/* 80190418  D0 1D 03 C4 */	stfs f0, 0x3c4(r29)
/* 8019041C  D0 1D 03 C8 */	stfs f0, 0x3c8(r29)
/* 80190420  9B DD 03 CE */	stb r30, 0x3ce(r29)
/* 80190424  9B FD 03 CF */	stb r31, 0x3cf(r29)
/* 80190428  88 1D 03 CE */	lbz r0, 0x3ce(r29)
/* 8019042C  28 00 00 00 */	cmplwi r0, 0
/* 80190430  41 82 00 0C */	beq lbl_8019043C
/* 80190434  7F A3 EB 78 */	mr r3, r29
/* 80190438  48 00 09 31 */	bl createMirrorModel__16dFile_select3D_cFv
lbl_8019043C:
/* 8019043C  88 1D 03 CF */	lbz r0, 0x3cf(r29)
/* 80190440  28 00 00 00 */	cmplwi r0, 0
/* 80190444  41 82 00 0C */	beq lbl_80190450
/* 80190448  7F A3 EB 78 */	mr r3, r29
/* 8019044C  48 00 07 5D */	bl createMaskModel__16dFile_select3D_cFv
lbl_80190450:
/* 80190450  80 7D 00 04 */	lwz r3, 4(r29)
/* 80190454  48 14 07 A1 */	bl adjustSize__12JKRSolidHeapFv
/* 80190458  80 61 00 08 */	lwz r3, 8(r1)
/* 8019045C  4B E7 ED 71 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80190460  80 1D 00 08 */	lwz r0, 8(r29)
/* 80190464  28 00 00 00 */	cmplwi r0, 0
/* 80190468  41 82 00 1C */	beq lbl_80190484
/* 8019046C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80190470  38 80 FF FF */	li r4, -1
/* 80190474  38 A0 00 FF */	li r5, 0xff
/* 80190478  48 01 84 75 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 8019047C  7F A3 EB 78 */	mr r3, r29
/* 80190480  48 00 04 DD */	bl set_mtx__16dFile_select3D_cFv
lbl_80190484:
/* 80190484  39 61 00 20 */	addi r11, r1, 0x20
/* 80190488  48 1D 1D A1 */	bl _restgpr_29
/* 8019048C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80190490  7C 08 03 A6 */	mtlr r0
/* 80190494  38 21 00 20 */	addi r1, r1, 0x20
/* 80190498  4E 80 00 20 */	blr 
