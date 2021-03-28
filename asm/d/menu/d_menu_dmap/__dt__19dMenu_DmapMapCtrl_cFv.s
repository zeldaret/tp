lbl_801BD144:
/* 801BD144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BD148  7C 08 02 A6 */	mflr r0
/* 801BD14C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BD150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BD154  93 C1 00 08 */	stw r30, 8(r1)
/* 801BD158  7C 7E 1B 79 */	or. r30, r3, r3
/* 801BD15C  7C 9F 23 78 */	mr r31, r4
/* 801BD160  41 82 00 58 */	beq lbl_801BD1B8
/* 801BD164  3C 60 80 3C */	lis r3, __vt__19dMenu_DmapMapCtrl_c@ha
/* 801BD168  38 03 CD 74 */	addi r0, r3, __vt__19dMenu_DmapMapCtrl_c@l
/* 801BD16C  90 1E 00 00 */	stw r0, 0(r30)
/* 801BD170  41 82 00 38 */	beq lbl_801BD1A8
/* 801BD174  3C 60 80 3C */	lis r3, __vt__20dMenu_StageMapCtrl_c@ha
/* 801BD178  38 03 CA EC */	addi r0, r3, __vt__20dMenu_StageMapCtrl_c@l
/* 801BD17C  90 1E 00 00 */	stw r0, 0(r30)
/* 801BD180  41 82 00 28 */	beq lbl_801BD1A8
/* 801BD184  3C 60 80 3C */	lis r3, __vt__15dMenu_DmapMap_c@ha
/* 801BD188  38 03 CA E0 */	addi r0, r3, __vt__15dMenu_DmapMap_c@l
/* 801BD18C  90 1E 00 00 */	stw r0, 0(r30)
/* 801BD190  38 7E 00 04 */	addi r3, r30, 4
/* 801BD194  3C 80 80 1C */	lis r4, __dt__15renderingDmap_cFv@ha
/* 801BD198  38 84 03 80 */	addi r4, r4, __dt__15renderingDmap_cFv@l
/* 801BD19C  38 A0 00 38 */	li r5, 0x38
/* 801BD1A0  38 C0 00 02 */	li r6, 2
/* 801BD1A4  48 1A 4B 45 */	bl __destroy_arr
lbl_801BD1A8:
/* 801BD1A8  7F E0 07 35 */	extsh. r0, r31
/* 801BD1AC  40 81 00 0C */	ble lbl_801BD1B8
/* 801BD1B0  7F C3 F3 78 */	mr r3, r30
/* 801BD1B4  48 11 1B 89 */	bl __dl__FPv
lbl_801BD1B8:
/* 801BD1B8  7F C3 F3 78 */	mr r3, r30
/* 801BD1BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BD1C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801BD1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BD1C8  7C 08 03 A6 */	mtlr r0
/* 801BD1CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801BD1D0  4E 80 00 20 */	blr 
